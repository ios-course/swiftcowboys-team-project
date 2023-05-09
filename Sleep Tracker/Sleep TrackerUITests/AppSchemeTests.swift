import SwiftUI
import XCTest

final class AppSchemeTests: XCTestCase {
    func testAppSchemeEnumReturnsCorrectValuesForAppColorScheme() {
        let darkIndigo = Color(red: 37.0 / 255.0, green: 23.0 / 255.0, blue: 81.0 / 255.0)
        let brightBlue = Color(red: 56.0 / 255.0, green: 40.0 / 255.0, blue: 183.0 / 255.0)
        let bluePurple = Color(red: 157.0 / 255.0, green: 145.0 / 255.0, blue: 255.0 / 255.0)
        let blueViolet = Color(red: 47.0 / 255.0, green: 37.0 / 255.0, blue: 122.0 / 255.0)
        let brightPurple = Color(red: 49.0 / 255.0, green: 27.0 / 255.0, blue: 107.0 / 255.0)
        let brightMint = Color(red: 145.0 / 255.0, green: 255.0 / 255.0, blue: 182.0 / 255.0)
        let darkGraphite = Color(red: 24.0 / 255.0, green: 29.0 / 255.0, blue: 43.0 / 255.0)
        let lightGray = Color(red: 196.0 / 255.0, green: 196.0 / 255.0, blue: 196.0 / 255.0)
        let white = Color(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0)
        let black = Color(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0)

        XCTAssertEqual(darkIndigo, Color.AppScheme.darkIndigo)
        XCTAssertEqual(brightBlue, Color.AppScheme.brightBlue)
        XCTAssertEqual(bluePurple, Color.AppScheme.bluePurple)
        XCTAssertEqual(blueViolet, Color.AppScheme.blueViolet)
        XCTAssertEqual(brightPurple, Color.AppScheme.brightPurple)
        XCTAssertEqual(brightMint, Color.AppScheme.brightMint)
        XCTAssertEqual(darkGraphite, Color.AppScheme.darkGraphite)
        XCTAssertEqual(lightGray, Color.AppScheme.lightGray)
        XCTAssertEqual(white, Color.AppScheme.white)
        XCTAssertEqual(black, Color.AppScheme.black)
    }

    func testColorAppSchemeCanBeUsedInAFunctionWithAColorParameter() {
        func isTheColorUsed(color _: Color) -> Bool {
            true
        }

        XCTAssertTrue(isTheColorUsed(color: Color.AppScheme.darkIndigo))
    }
}
