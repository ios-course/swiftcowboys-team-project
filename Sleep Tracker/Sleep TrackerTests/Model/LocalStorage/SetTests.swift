import XCTest

final class LocalStorageSetTests: XCTestCase {
    override func setUp() {
        storage = LocalStorage()
    }

    func testSetPresentsInTheAPI() {
        // given // when
        storage.set("value", forKey: "vgeirujm3498v983vj-key")

        // then
        // the code compiles
    }

    func testSetReturnsNilForNonExistentKey() {
        // given
        let testValue = 100
        let key = "cehn9hiuheuvuehnv3w43-number"

        // when
        storage.set(testValue, forKey: key)

        // then
        let retrievedValue: Int? = storage.get(forKey: key)
        XCTAssertEqual(testValue, retrievedValue)
    }

    func testSetSetsTheValueForExistentKey() {
        // given
        let englishGreeting = "Hello"
        let spanishGreeting = "Hola"
        let key = "348yv347y7nr4c-greeting"

        // when
        storage.set(englishGreeting, forKey: key)
        storage.set(spanishGreeting, forKey: key)

        // then
        let retrievedValue: String? = storage.get(forKey: key)
        XCTAssertEqual(spanishGreeting, retrievedValue)
    }

    private var storage = LocalStorage()
}
