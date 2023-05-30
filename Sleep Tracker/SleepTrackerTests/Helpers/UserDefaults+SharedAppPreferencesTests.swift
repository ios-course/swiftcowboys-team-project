import XCTest

final class UserDefaultsSharedAppPreferencesTests: XCTestCase {
    override func setUp() async throws {
        try await super.setUp()
        UserDefaults.sharedAppPreferences?.deleteDataForAllTestKeys()
    }

    override func tearDown() async throws {
        UserDefaults.sharedAppPreferences?.deleteDataForAllTestKeys()
        try await super.tearDown()
    }

    func testSharedAppPreferencesPropertyDoesNotReturnNil() {
        XCTAssertNotNil(UserDefaults.sharedAppPreferences)
    }

    func testSharedAppPreferencesRetrievesTheDataSavedUsingTheDifferentReferenceButTheSameName() {
        // given
        let key = UserDefaults.TestKey.keyA.rawValue
        let valueSavedInA = "value"

        let storageA = UserDefaults.sharedAppPreferences
        let storageB = UserDefaults.sharedAppPreferences

        storageA?.set(valueSavedInA, forKey: key)

        // when
        let valueRetrievedFromB = storageB?.string(forKey: key)

        // then
        XCTAssertEqual(valueRetrievedFromB, valueSavedInA)
    }

    func testSharedAppPreferencesDoesNotRetrieveTheDataRemovedUsingTheDifferentReferenceButTheSameName() {
        // given
        let key = UserDefaults.TestKey.keyA.rawValue
        let valueSavedInA = "value"

        let storageA = UserDefaults.sharedAppPreferences
        let storageB = UserDefaults.sharedAppPreferences
        let storageC = UserDefaults.sharedAppPreferences

        storageA?.setValue(valueSavedInA, forKey: key)
        storageB?.removeObject(forKey: key)

        // when
        let valueRetrievedFromC = storageC?.string(forKey: key)

        // then
        XCTAssertNil(valueRetrievedFromC)
    }

    func testUserDefaultKeysHaveExpectedValues() {
        XCTAssertEqual(UserDefaults.Key.sleepingState, "sleepingState")
    }
}
