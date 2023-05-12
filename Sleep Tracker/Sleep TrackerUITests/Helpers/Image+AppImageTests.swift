import SwiftUI
import XCTest

final class ImageAppImageTests: XCTestCase {
    func testAppImageEnumReturnsCorrectImagesForAppImage() {
        let alarmSymbolWhite = Image("Alarm_symbol_white")
        let bedSymbolWhite = Image("Bed_symbol_white")
        let exitSymbolBlack = Image("Exit_symbol_black")
        let generalBackgroundImage = Image("General_background_image")
        let homeSymbolPurple = Image("Home_symbol_purple")
        let moonSymbolPurple = Image("Moon_symbol_purple")
        let moonWithStarsSymbolColored = Image("Moon_with_stars_symbol_colored")
        let moonWithStarsSymbolPurple = Image("Moon_with_stars_symbol_purple")
        let onboardingBackgroundImage = Image("Onboarding_background_image")
        let sleepingAstronautImage = Image("Sleeping_astronaut_image")
        let statisticsSymbolPurple = Image("Statistics_symbol_purple")
        let sunSymbolColored = Image("Sun_symbol_colored")
        let tickMarkSymbolWhite = Image("Tick_mark_symbol_white")
        let viewSymbolPurple = Image("View_symbol_purple")

        XCTAssertEqual(alarmSymbolWhite, .AppImage.alarmSymbolWhite)
        XCTAssertEqual(bedSymbolWhite, .AppImage.bedSymbolWhite)
        XCTAssertEqual(exitSymbolBlack, .AppImage.exitSymbolBlack)
        XCTAssertEqual(generalBackgroundImage, .AppImage.generalBackgroundImage)
        XCTAssertEqual(homeSymbolPurple, .AppImage.homeSymbolPurple)
        XCTAssertEqual(moonSymbolPurple, .AppImage.moonSymbolPurple)
        XCTAssertEqual(moonWithStarsSymbolColored, .AppImage.moonWithStarsSymbolColored)
        XCTAssertEqual(moonWithStarsSymbolPurple, .AppImage.moonWithStarsSymbolPurple)
        XCTAssertEqual(onboardingBackgroundImage, .AppImage.onboardingBackgroundImage)
        XCTAssertEqual(sleepingAstronautImage, .AppImage.sleepingAstronautImage)
        XCTAssertEqual(statisticsSymbolPurple, .AppImage.statisticsSymbolPurple)
        XCTAssertEqual(sunSymbolColored, .AppImage.sunSymbolColored)
        XCTAssertEqual(tickMarkSymbolWhite, .AppImage.tickMarkSymbolWhite)
        XCTAssertEqual(viewSymbolPurple, .AppImage.viewSymbolPurple)
    }

    func testImageAppImageCanBeUsedInAFunctionWithAnImageParameter() {
        func isTheImageUsed(image _: Image) -> Bool {
            true
        }

        XCTAssertTrue(isTheImageUsed(image: .AppImage.alarmSymbolWhite))
    }
}
