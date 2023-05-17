import Foundation

/// A local storage that can store key-value pairs persistently across launches of the app.
final class LocalStorage {
    // MARK: - Public interface

    /// Stores the given value for the given key in a local storage.
    /// If a value for the key already exists in the storage, it is overridden.
    /// - Note: The method is thread-safe.
    /// - Parameters:
    ///   - value: The value to be stored.
    ///   - key: The key associated with the value.
    func set<T>(_ value: T, forKey key: String) {
        standardDefaults.set(value, forKey: key)
    }

    /// Retrieves the value of specified type, associated with the given key from local storage.
    /// - Note: It attempts to cast the value to the specified type, returning the value if the cast is successful.
    /// - Parameter key: The key associated with the value.
    /// - Returns: The value associated with the key, or `nil` if the key is not found
    /// or the value has a type different from the specified one.
    func get<T>(forKey key: String) -> T? {
        return standardDefaults.object(forKey: key) as? T
    }

    /// Deletes the value associated with the given key from local storage.
    /// If no value is found for the given key, the method has no effect.
    /// - Parameter key: The key associated with the value.
    func delete(forKey key: String) {
        standardDefaults.removeObject(forKey: key)
    }

    // MARK: - Private interface

    private let standardDefaults = UserDefaults.standard
}
