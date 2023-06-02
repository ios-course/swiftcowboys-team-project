import XCTest

final class AppFontSizeTests: XCTestCase {
    func testAppFontSizeReturnsCorrectValues() {
        let small: CGFloat = 12
        let base: CGFloat = 20
        let heading: CGFloat = 40

        XCTAssertEqual(small, .AppFontSize.small)
        XCTAssertEqual(base, .AppFontSize.base)
        XCTAssertEqual(heading, .AppFontSize.heading)
    }
}
