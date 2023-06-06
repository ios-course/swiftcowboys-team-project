import XCTest

final class AppFontSizeTests: XCTestCase {
    func testAppFontSizeReturnsCorrectValues() {
        XCTAssertEqual(CGFloat.AppFontSize.caption, 12)
        XCTAssertEqual(CGFloat.AppFontSize.base, 20)
        XCTAssertEqual(CGFloat.AppFontSize.heading, 40)
    }
}
