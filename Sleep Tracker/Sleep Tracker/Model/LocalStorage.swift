import Foundation

/// A wrapper that provides a convenient interface to interact with local storage using `UserDefaults`.
final class LocalStorage {
    // MARK: - Public interface

    /// Sets the given value for the given key in local storage.
    /// If a value for the key already exists in the storage, it is overridden.
    ///
    /// - Parameters:
    ///   - value: The value to be stored.
    ///   - key: The key associated with the value.
    func set<T>(_ value: T, forKey key: String) {
        defaults.set(value, forKey: key)
    }

    /// Retrieves the value associated with the given key from local storage.
    ///
    /// - Parameter key: The key associated with the value.
    /// - Returns: The value associated with the key, or `nil` if the key is not found
    /// or the value has a different type.
    func get<T>(forKey key: String) -> T? {
        return defaults.object(forKey: key) as? T
    }

    /// Deletes the value associated with the given key from local storage.
    ///
    /// - Parameter key: The key associated with the value.
    func delete(forKey key: String) {
        defaults.removeObject(forKey: key)
    }

    // MARK: - Private interface

    private let defaults = UserDefaults.standard
}
