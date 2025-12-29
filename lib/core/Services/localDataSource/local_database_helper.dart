/// Abstract interface for local database operations.
/// This allows swapping between different database implementations (Hive, etc.)
abstract class LocalDatabaseHelper {
  /// Initialize the database
  Future<void> initialize();

  /// Clear all data from the database
  Future<void> clearAll();

  /// Add or update an entity in the database
  Future<void> addEntity<T>(T entity, {dynamic key});

  /// Retrieve all entities of type T from the database
  Future<List<T>> getAllEntities<T>(String boxName);

  /// Delete an entity by its key
  Future<void> deleteEntity<T>(String boxName, dynamic key);

  /// Check if the database is initialized and open
  bool get isOpen;
}
