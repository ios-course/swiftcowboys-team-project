import XCTest

final class AppFontTests: XCTestCase {
    func testAppFontSizesReturnCorrectValues() {
        let size10: CGFloat = 10
        let size12: CGFloat = 12
        let size16: CGFloat = 16
        let size18: CGFloat = 18
        let size20: CGFloat = 20
        let size25: CGFloat = 25
        let size40: CGFloat = 40
        let size48: CGFloat = 48
        let size64: CGFloat = 64

        XCTAssertEqual(size10, AppFont.size10)
        XCTAssertEqual(size12, AppFont.size12)
        XCTAssertEqual(size16, AppFont.size16)
        XCTAssertEqual(size18, AppFont.size18)
        XCTAssertEqual(size20, AppFont.size20)
        XCTAssertEqual(size25, AppFont.size25)
        XCTAssertEqual(size40, AppFont.size40)
        XCTAssertEqual(size48, AppFont.size48)
        XCTAssertEqual(size64, AppFont.size64)
    }
}
