import XCTest

final class LocalStorageGetTests: XCTestCase {
    override func setUp() {
        storage = LocalStorage()
    }

    func testGetPresentsInTheAPI() {
        // given // when
        let _: Bool? = storage.get(forKey: "key")

        // then
        // the code compiles
    }

    func testGetReturnsTheValueForExistingkey() {
        // given
        let testValue = 100
        let key = "31n78hv78hb287n2vc23r-number"

        // when
        storage.set(testValue, forKey: key)
        let retrievedValue: Int? = storage.get(forKey: key)

        // then
        XCTAssertEqual(testValue, retrievedValue)
    }

    func testGetReturnsNilForNonExistentKey() {
        // given // when
        let nonExistentKey = "v4t72h7nimnasnoh87392c-nonExistentKey"

        // then
        let retrievedValue: String? = storage.get(forKey: nonExistentKey)
        XCTAssertNil(retrievedValue)
    }

    func testGetReturnsNilWhenThereIsAValueOfDifferentTypeForExistentKey() {
        // given
        let key = "2347824gtv8hb37hn3rcqc4-isAlarmOn"
        let alarmStatus = "true"

        // when
        storage.set(alarmStatus, forKey: key)

        // then
        let retrievedValue: Bool? = storage.get(forKey: key)
        XCTAssertNil(retrievedValue)
    }

    private var storage = LocalStorage()
}
