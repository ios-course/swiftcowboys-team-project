import Foundation

extension UserDefaults {
    /// A global instance of `UserDefaults` configured to store the app-specific preferences.
    static var sharedAppPreferences: UserDefaults? {
        let bundleIdPrefix = Bundle.main.bundleIdentifier ?? "ios-app"
        let storagePrefix = "key-value-storage-over-the-ios-user-defaults-storage"
        let storageName = "app-preferences"

        return UserDefaults(suiteName: "\(bundleIdPrefix)-\(storagePrefix)-\(storageName)")
    }

    /// Keys to use within the app when accessing `UserDefaults`.
    enum Key {
        /// References the state of the sleep.
        static let sleepingState = "sleepingState"
    }
}
