import XCTest

final class LocalStorageGetTests: XCTestCase {
    override func setUp() {
        storage = LocalStorage()
    }

    func testGetPresentsInTheAPI() {
        // given
        let _: Bool? = storage.get(forKey: "key")

        // when

        // then
        // the code compiles
    }

    func testGetReturnsTheValueForExistingkey() {
        // given
        let numberToSet = 100
        let key = "number"

        // when
        storage.set(numberToSet, forKey: key)
        let retrievedValue: Int? = storage.get(forKey: key)

        // then
        XCTAssertEqual(numberToSet, retrievedValue)
    }

    func testGetReturnsNilForNonExistentKey() {
        // given
        let nonExistentKey = "nonExistentKey"

        // when
        let retrievedValue: String? = storage.get(forKey: nonExistentKey)

        // then
        XCTAssertNil(retrievedValue)
    }

    func testGetReturnsNilWhenThereIsAValueOfDifferentTypeForExistentKey() {
        // given
        let key = "isAlarmOn"
        let alarmStatus = "true"

        // when
        storage.set(alarmStatus, forKey: key)
        let retrievedValue: Bool? = storage.get(forKey: key)

        // then
        XCTAssertNil(retrievedValue)
    }

    private var storage = LocalStorage()
}
