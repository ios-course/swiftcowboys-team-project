import XCTest

final class AppUIConstantTests: XCTestCase {
    func testAppUIConstantReturnsCorrectValues() {
        XCTAssertEqual(AppUIConstant.baseCornerRadius, 10)

        XCTAssertEqual(AppUIConstant.transparent, 0.0)
        XCTAssertEqual(AppUIConstant.semitransparent, 0.5)
        XCTAssertEqual(AppUIConstant.opaque, 1.0)
    }
}
