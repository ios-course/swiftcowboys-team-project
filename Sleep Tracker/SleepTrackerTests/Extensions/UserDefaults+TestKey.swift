import Foundation

extension UserDefaults {
    /// Keys in the key-value storage to use in unit tests.
    enum TestKey: String, CaseIterable {

        /// An example of key to use in the key-value storage.
        case keyA = "unit-test-keyA"
    }
}
