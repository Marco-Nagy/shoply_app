import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:shoply/core/Services/localDataSource/local_database_helper.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_model.dart';
import 'package:shoply/features/customer/favorites/data/models/favorites_hive.dart';

class HiveDatabaseHelper implements LocalDatabaseHelper {
  HiveDatabaseHelper._();

  static final HiveDatabaseHelper _instance = HiveDatabaseHelper._();

  factory HiveDatabaseHelper() => _instance;

  static const String notificationBoxName = 'notification_box';
  static const String favoritesBoxName = 'favorites_box';

  Box<AddNotificationModel>? _notificationBox;
  Box<FavoritesHive>? _favoritesBox;

  @override
  Future<void> initialize() async {
    await Hive.initFlutter();

    // Register adapters
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(AddNotificationModelAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(FavoritesHiveAdapter());
    }

    // Open boxes
    _notificationBox =
        await Hive.openBox<AddNotificationModel>(notificationBoxName);
    _favoritesBox = await Hive.openBox<FavoritesHive>(favoritesBoxName);
  }

  @override
  Future<void> clearAll() async {
    await _notificationBox?.clear();
    await _favoritesBox?.clear();
  }

  @override
  Future<void> addEntity<T>(T entity, {dynamic key}) async {
    if (T == AddNotificationModel) {
      await _notificationBox?.add(entity as AddNotificationModel);
    } else if (T == FavoritesHive) {
      // Use productId as key for favorites
      final favorite = entity as FavoritesHive;
      await _favoritesBox?.put(key ?? favorite.productId, favorite);
    }
  }

  @override
  Future<List<T>> getAllEntities<T>(String boxName) async {
    if (T == AddNotificationModel) {
      return _notificationBox?.values.toList() as List<T>? ?? [];
    } else if (T == FavoritesHive) {
      return _favoritesBox?.values.toList() as List<T>? ?? [];
    }
    return [];
  }

  @override
  Future<void> deleteEntity<T>(String boxName, dynamic key) async {
    if (T == AddNotificationModel) {
      await _notificationBox?.delete(key);
    } else if (T == FavoritesHive) {
      await _favoritesBox?.delete(key);
    }
  }

  @override
  bool get isOpen =>
      (_notificationBox?.isOpen ?? false) && (_favoritesBox?.isOpen ?? false);

  // Legacy method for backward compatibility
  Box<AddNotificationModel>? get notificationBox => _notificationBox;
}
