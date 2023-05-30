import XCTest

final class DateShortComponentsTests: XCTestCase {
    private enum Time {
        static let secondsInMinute = 60
        static let minutesInHour = 60
        static let hoursInDay = 24

        static let minute = TimeInterval(Time.secondsInMinute)
        static let hour = TimeInterval(Time.minutesInHour) * Time.minute
    }

    func testHourPropertyReturnsExpectedValues() {
        let hourComponentsToTest: [TimeInterval] = [
            0, 1, 3, 5, 10, 19, 20, 23, 24, 25, 100, 999, 1000, 10001, 9999, 10000, 12345,
        ]

        hourComponentsToTest.forEach {
            let hours = $0 * Time.hour
            let expectedHoursComponent = Int($0) % Time.hoursInDay
            let testDate = Date(timeIntervalSince1970: hours).toCurrentTimeZone

            XCTAssertEqual(testDate.hour, expectedHoursComponent)
        }
    }

    func testMinutePropertyReturnsExpectedValues() {
        let hourComponentsToTest: [TimeInterval] = [
            0, 1, 3, 5, 10, 19, 20, 23, 24, 25, 59, 60, 61, 99, 100, 101, 1000, 9999, 10000, 12345,
        ]

        hourComponentsToTest.forEach {
            let minutes = $0 * Time.minute
            let expectedMinutesComponent = Int($0) % Time.minutesInHour
            let testDate = Date(timeIntervalSince1970: minutes).toCurrentTimeZone

            XCTAssertEqual(testDate.minutes, expectedMinutesComponent)
        }
    }
}
