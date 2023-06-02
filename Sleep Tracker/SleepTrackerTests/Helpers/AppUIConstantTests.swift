import XCTest

final class AppUIConstantTests: XCTestCase {
    func testAppUIConstantReturnsCorrectValues() {
        let baseCornerRadius: CGFloat = 10
        let alarmCornerRadius: CGFloat = 20
        let tabBarCornerRadius: CGFloat = 50
        let largeCornerRadius: CGFloat = 80

        let transparent = 0.0
        let translucent = 0.5
        let opaque = 1.0

        let minFrameWidth: CGFloat = 0
        let maxFrameHeight: CGFloat = 100

        XCTAssertEqual(baseCornerRadius, AppUIConstant.baseCornerRadius)
        XCTAssertEqual(alarmCornerRadius, AppUIConstant.alarmCornerRadius)
        XCTAssertEqual(tabBarCornerRadius, AppUIConstant.tabBarCornerRadius)
        XCTAssertEqual(largeCornerRadius, AppUIConstant.largeCornerRadius)

        XCTAssertEqual(transparent, AppUIConstant.transparent)
        XCTAssertEqual(translucent, AppUIConstant.translucent)
        XCTAssertEqual(opaque, AppUIConstant.opaque)

        XCTAssertEqual(minFrameWidth, AppUIConstant.minFrameWidth)
        XCTAssertEqual(maxFrameHeight, AppUIConstant.maxFrameHeight)
    }
}
