import SwiftUI
import XCTest

final class ColorAppSchemeTests: XCTestCase {
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

        XCTAssertEqual(darkIndigo, .AppScheme.darkIndigo)
        XCTAssertEqual(brightBlue, .AppScheme.brightBlue)
        XCTAssertEqual(bluePurple, .AppScheme.bluePurple)
        XCTAssertEqual(blueViolet, .AppScheme.blueViolet)
        XCTAssertEqual(brightPurple, .AppScheme.brightPurple)
        XCTAssertEqual(brightMint, .AppScheme.brightMint)
        XCTAssertEqual(darkGraphite, .AppScheme.darkGraphite)
        XCTAssertEqual(lightGray, .AppScheme.lightGray)
        XCTAssertEqual(white, .AppScheme.white)
        XCTAssertEqual(black, .AppScheme.black)
    }

    func testColorAppSchemeCanBeUsedInAFunctionWithAColorParameter() {
        func isTheColorUsed(color _: Color) -> Bool {
            true
        }

        XCTAssertTrue(isTheColorUsed(color: .AppScheme.darkIndigo))
    }
}
