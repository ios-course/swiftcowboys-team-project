import XCTest

final class AppFontSizeTests: XCTestCase {
    func testAppFontSizeReturnsCorrectValues() {
        let caption: CGFloat = 12
        let base: CGFloat = 20
        let heading: CGFloat = 40

        XCTAssertEqual(caption, .AppFontSize.caption)
        XCTAssertEqual(base, .AppFontSize.base)
        XCTAssertEqual(heading, .AppFontSize.heading)
    }
}
