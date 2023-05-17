import XCTest

final class LocalStorageSetTests: XCTestCase {
    override func setUp() {
        storage = LocalStorage()
    }

    func testSetPresentsInTheAPI() {
        // given
        storage.set("value", forKey: "key")

        // when

        // then
        // the code compiles
    }

    func testSetReturnsNilForNonExistentKey() {
        // given
        let numberToSet = 100
        let key = "number"

        // when
        storage.set(numberToSet, forKey: key)
        let retrievedValue: Int? = storage.get(forKey: key)

        // then
        XCTAssertEqual(numberToSet, retrievedValue)
    }

    func testSetSetsTheValueForExistentKey() {
        // given
        let englishGreeting = "Hello"
        let spanishGreeting = "Hola"
        let key = "greeting"

        // when
        storage.set(englishGreeting, forKey: key)
        storage.set(spanishGreeting, forKey: key)
        let retrievedValue: String? = storage.get(forKey: key)

        // then
        XCTAssertEqual(spanishGreeting, retrievedValue)
    }

    private var storage = LocalStorage()
}
