import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shoply/features/admin/notifications/data/model/add_notification_table_schema.dart';

class IsarDatabaseHelper {
  late final Isar _isar;

  /// Initializes the Isar database with the required schemas.
  Future<void> initialize() async {
    final dir = await getApplicationSupportDirectory();
    _isar = await Isar.open(
      [AddNotificationTableSchemaSchema], // List all schemas here
      directory: dir.path,
    );
  }

  /// Clears all collections in the Isar database.
  Future<void> clearAllCollections() async {
    await _isar.writeTxn(() async {
       _isar.clearSync(); // Clear specific collections
    });
  }

  /// Returns the Isar instance for direct use.
  Isar get isar => _isar;

  /// Adds an entity to the specified collection.
  Future<void> addEntity<T>(T entity) async {
    await _isar.writeTxn(() async {
      await _isar.collection<T>().put(entity);
    });
  }

  /// Retrieves all entities from the specified collection.
  Future<List<T>> getAllEntities<T>() async {
    return _isar.collection<T>().where().findAll();
  }

  /// Deletes an entity from the specified collection by ID.
  Future<void> deleteEntity<T>(id) async {
    await _isar.writeTxn(() async {
      await _isar.collection<T>().delete(id);
    });
  }
}
