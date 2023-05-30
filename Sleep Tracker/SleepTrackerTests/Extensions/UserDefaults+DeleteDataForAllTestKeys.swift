import Foundation

extension UserDefaults {
    /**
     Removes the associated data for all the test keys.
     If some test key isn’t found, method does nothing for that key.
     */
    func deleteDataForAllTestKeys() {
        UserDefaults.TestKey.allCases.forEach {
            self.removeObject(forKey: $0.rawValue)
        }
    }
}
