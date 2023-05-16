import XCTest

final class DeleteTests: XCTestCase {
    override func setUp() {
        storage = LocalStorage()
    }

    func testDeletePresentsInTheAPI() {
        // given
        storage.delete(forKey: "key")

        // when

        // then
        // the code compiles
    }

    func testDeleteRemovesValueForExistingkey() {
        // given
        let numberToSet = 100
        let key = "number"
        storage.set(numberToSet, forKey: key)

        // when
        storage.delete(forKey: key)

        let retrievedValue: Int? = storage.get(forKey: key)

        // then
        XCTAssertNil(retrievedValue)
    }

    func testDeleteRemovesValueForNonExistingkey() {
        // given
        let nonExistentKey = "nonExistentKey"

        // when
        storage.delete(forKey: nonExistentKey)
        let retrievedValue: String? = storage.get(forKey: nonExistentKey)

        // then
        XCTAssertNil(retrievedValue)
    }

    func testDeleteRemovesCorrespondingValuesWhenDeletesForAFewKeys() {
        // Given
        storage.set("Value 1", forKey: "key1")
        storage.set("Value 2", forKey: "key2")
        storage.set("Value 3", forKey: "key3")

        // When
        storage.delete(forKey: "key1")
        storage.delete(forKey: "key3")

        let value1: String? = storage.get(forKey: "key1")
        let value3: String? = storage.get(forKey: "key3")

        // Then
        XCTAssertNil(value1)
        XCTAssertNil(value3)
        XCTAssertEqual(storage.get(forKey: "key2"), "Value 2")
    }

    private var storage = LocalStorage()
}
