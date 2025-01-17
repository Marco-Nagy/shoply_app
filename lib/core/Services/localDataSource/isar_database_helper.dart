import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_table_schema.dart';
import 'package:shoply/features/customer/favorites/data/models/favorites_table.dart';

class IsarDatabaseHelper {
  static Isar? _isar;

  /// Initializes the Isar database with the required schemas.
  Future<void> initialize() async {
    if (_isar != null && _isar!.isOpen) return; // Avoid re-initialization if already opened

    final dir = await getApplicationSupportDirectory();
    _isar = await Isar.open(
      [AddNotificationTableSchemaSchema, FavoritesTableSchema], // List all schemas here
      directory: dir.path,
    );
  }

  /// Ensures Isar is initialized before performing any action.
  Future<Isar> _ensureInitialized() async {
    if (_isar == null || !_isar!.isOpen) {
      await initialize();
    }
    return _isar!;
  }

  /// Clears all collections in the Isar database.
  Future<void> clearAllCollections() async {
    final isar = await _ensureInitialized();
    await isar.writeTxn(() async {
      await isar.clear(); // Clear all collections
    });
  }

  /// Adds an entity to the specified collection.
  Future<void> addEntity<T>(T entity) async {
    final isar = await _ensureInitialized();
    await isar.writeTxn(() async {
      await isar.collection<T>().put(entity);
    });
  }

  /// Retrieves all entities from the specified collection.
  Future<List<T>> getAllEntities<T>() async {
    final isar = await _ensureInitialized();
    return isar.collection<T>().where().findAll();
  }

  /// Deletes an entity from the specified collection by ID.
  Future<void> deleteEntity<T>(dynamic id) async {
    final isar = await _ensureInitialized();
    await isar.writeTxn(() async {
      await isar.collection<T>().delete(id);
    });
  }

  /// Checks if Isar is open.
  bool get isIsarOpen => _isar != null && _isar!.isOpen;
}
