import XCTest

final class LocalStorageDeleteTests: XCTestCase {
    override func setUp() {
        storage = LocalStorage()
    }

    func testDeletePresentsInTheAPI() {
        // given // when
        storage.delete(forKey: "vt78hwc789hr43-key")

        // then
        // the code compiles
    }

    func testDeleteRemovesValueForExistingKey() {
        // given
        let testValue = 100
        let key = "c1y4gns7h7h3q9-numberKey"
        storage.set(testValue, forKey: key)

        // when
        storage.delete(forKey: key)

        // then
        let retrievedValue: Int? = storage.get(forKey: key)
        XCTAssertNil(retrievedValue)
    }

    func testDeleteRemovesValueForNonExistingKey() {
        // given
        let nonExistentKey = "sdjiofsjio-nonExistentKey"

        // when
        storage.delete(forKey: nonExistentKey)

        // then
        let retrievedValue: String? = storage.get(forKey: nonExistentKey)
        XCTAssertNil(retrievedValue)
    }

    func testDeleteRemovesOnlyCorrespondingValuesWhenDeletesForAFewKeys() {
        // Given
        let key1 = "23rh89ciuwa-key1"
        let key2 = "chn4rnuinef-key2"
        let key3 = "3fouiednsnn-key3"
        storage.set("Value 1", forKey: key1)
        storage.set("Value 2", forKey: key2)
        storage.set("Value 3", forKey: key3)

        // When
        storage.delete(forKey: key1)
        storage.delete(forKey: key3)

        // Then
        let value1: String? = storage.get(forKey: key1)
        let value3: String? = storage.get(forKey: key3)

        XCTAssertNil(value1)
        XCTAssertNil(value3)
        XCTAssertEqual(storage.get(forKey: key2), "Value 2")
    }

    private var storage = LocalStorage()
}
