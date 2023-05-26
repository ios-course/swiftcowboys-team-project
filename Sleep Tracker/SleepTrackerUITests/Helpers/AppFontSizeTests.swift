import XCTest

final class AppFontSizeTests: XCTestCase {
    func testAppFontSizeReturnsCorrectValues() {
        let detail: CGFloat = 12
        let base: CGFloat = 20
        let heading: CGFloat = 40

        XCTAssertEqual(detail, AppFontSize.detail)
        XCTAssertEqual(base, AppFontSize.base)
        XCTAssertEqual(heading, AppFontSize.heading)
    }
}
