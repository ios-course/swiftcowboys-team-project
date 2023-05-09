import SwiftUI
import XCTest

final class CustomColorTests: XCTestCase {
    func testColorCustomEnumReturnsCorrectValuesForAppColorScheme() {
        let darkIndigo = Color(red: 0.145, green: 0.09, blue: 0.318)
        let brightBlue = Color(red: 0.22, green: 0.157, blue: 0.718)
        let bluePurple = Color(red: 0.616, green: 0.569, blue: 1)
        let blueViolet = Color(red: 0.184, green: 0.145, blue: 0.439)
        let brightPurple = Color(red: 0.192, green: 0.106, blue: 0.42)
        let brightMint = Color(red: 0.569, green: 1, blue: 0.715)
        let darkGraphite = Color(red: 0.094, green: 0.114, blue: 0.169)
        let lightGray = Color(red: 0.769, green: 0.769, blue: 0.769)
        let white = Color(red: 1, green: 1, blue: 1)
        let black = Color(red: 0, green: 0, blue: 0)

        XCTAssertEqual(darkIndigo, Color.Custom.darkIndigo)
        XCTAssertEqual(brightBlue, Color.Custom.brightBlue)
        XCTAssertEqual(bluePurple, Color.Custom.bluePurple)
        XCTAssertEqual(blueViolet, Color.Custom.blueViolet)
        XCTAssertEqual(brightPurple, Color.Custom.brightPurple)
        XCTAssertEqual(brightMint, Color.Custom.brightMint)
        XCTAssertEqual(darkGraphite, Color.Custom.darkGraphite)
        XCTAssertEqual(lightGray, Color.Custom.lightGray)
        XCTAssertEqual(white, Color.Custom.white)
        XCTAssertEqual(black, Color.Custom.black)
    }
}
