import XCTest

final class AppUIConstantTests: XCTestCase {
    func testAppUIConstantReturnsCorrectValues() {
        let baseCornerRadius: CGFloat = 10
        let alarmCornerRadius: CGFloat = 20
        let tabBarCornerRadius: CGFloat = 50
        let largeCornerRadius: CGFloat = 80

        let transparent = 0.0
        let semitransparent = 0.5
        let opaque = 1.0

        let minFrameWidthInAlarmSetup: CGFloat = 0
        let maxFrameHeightInAlarmSetup: CGFloat = 100

        XCTAssertEqual(baseCornerRadius, AppUIConstant.baseCornerRadius)
        XCTAssertEqual(alarmCornerRadius, AppUIConstant.alarmCornerRadius)
        XCTAssertEqual(tabBarCornerRadius, AppUIConstant.tabBarCornerRadius)
        XCTAssertEqual(largeCornerRadius, AppUIConstant.largeCornerRadius)

        XCTAssertEqual(transparent, AppUIConstant.transparent)
        XCTAssertEqual(semitransparent, AppUIConstant.semitransparent)
        XCTAssertEqual(opaque, AppUIConstant.opaque)

        XCTAssertEqual(minFrameWidthInAlarmSetup, AppUIConstant.minFrameWidthInAlarmSetup)
        XCTAssertEqual(maxFrameHeightInAlarmSetup, AppUIConstant.maxFrameHeightInAlarmSetup)
    }
}
