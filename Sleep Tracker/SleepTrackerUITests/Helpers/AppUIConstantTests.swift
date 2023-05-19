import XCTest

final class AppUIConstantTests: XCTestCase {
    func testAppUIConstantSizesReturnCorrectValues() {
        let cornerRadius10: CGFloat = 10
        let cornerRadius46: CGFloat = 46
        let cornerRadius20: CGFloat = 20
        let cornerRadius15: CGFloat = 15
        let cornerRadius80: CGFloat = 80

        let padding24: CGFloat = 24
        let padding50: CGFloat = 50
        let padding10: CGFloat = 10

        let transparent = 0.0
        let translucent = 0.5
        let opaque = 1.0

        let frameSize0: CGFloat = 0
        let frameSize100: CGFloat = 100

        XCTAssertEqual(cornerRadius10, AppUIConstant.cornerRadius10)
        XCTAssertEqual(cornerRadius46, AppUIConstant.cornerRadius46)
        XCTAssertEqual(cornerRadius20, AppUIConstant.cornerRadius20)
        XCTAssertEqual(cornerRadius15, AppUIConstant.cornerRadius15)
        XCTAssertEqual(cornerRadius80, AppUIConstant.cornerRadius80)

        XCTAssertEqual(padding24, AppUIConstant.padding24)
        XCTAssertEqual(padding50, AppUIConstant.padding50)
        XCTAssertEqual(padding10, AppUIConstant.padding10)

        XCTAssertEqual(transparent, AppUIConstant.transparent)
        XCTAssertEqual(translucent, AppUIConstant.translucent)
        XCTAssertEqual(opaque, AppUIConstant.opaque)

        XCTAssertEqual(frameSize0, AppUIConstant.frameSize0)
        XCTAssertEqual(frameSize100, AppUIConstant.frameSize100)
    }
}
