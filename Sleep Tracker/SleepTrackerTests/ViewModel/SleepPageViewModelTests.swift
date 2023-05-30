import XCTest

final class SleepPageViewModelTests: XCTestCase {
    func testInitCreatesInstanceWithExpectedValues() {
        // given
        let currentTime = Date.now

        // when
        let viewModel = SleepPageViewModel()

        // then
        XCTAssertEqual(viewModel.isAlarmOn, false)
        XCTAssertEqual(viewModel.isSleepInProgress, false)
        XCTAssertEqual(viewModel.alarmTime.description, currentTime.description)
        XCTAssertEqual(viewModel.bottomButtonText, "START SLEEPING")
        XCTAssertEqual(viewModel.alarmText, "No Alarm")
        XCTAssertEqual(viewModel.estimatedSleepTimeText, " \n ")
    }

    func testEstimatedSleepTimeTextDependsOnIsAlarmOnProperty() {
        // given
        let viewModel = SleepPageViewModel()

        // when
        viewModel.isAlarmOn = false

        // then
        XCTAssertEqual(
            viewModel.estimatedSleepTimeText,
            estimatedSleepTimeText(isAlarmOn: viewModel.isAlarmOn, alarmTime: viewModel.alarmTime)
        )

        // when
        viewModel.isAlarmOn = true

        // then
        XCTAssertEqual(
            viewModel.estimatedSleepTimeText,
            estimatedSleepTimeText(isAlarmOn: viewModel.isAlarmOn, alarmTime: viewModel.alarmTime)
        )
    }

    func testEstimatedSleepTimeTextDependsOnAlarmTimeProperty() {
        // given
        let fiveHoursFiveMinutesAndFiveSeconds = TimeInterval(5 * 60 * 60 + 5 * 60 + 5)
        let twelveHoursTwelveMinutesAndTwelveSeconds = TimeInterval(12 * 60 * 60 + 12 * 60 + 12)
        let viewModel = SleepPageViewModel()
        viewModel.isAlarmOn = true

        // when
        viewModel.alarmTime = Date.now.addingTimeInterval(fiveHoursFiveMinutesAndFiveSeconds)

        // then
        XCTAssertEqual(
            viewModel.estimatedSleepTimeText,
            estimatedSleepTimeText(isAlarmOn: viewModel.isAlarmOn, alarmTime: viewModel.alarmTime)
        )

        // when
        viewModel.alarmTime = Date.now.addingTimeInterval(twelveHoursTwelveMinutesAndTwelveSeconds)

        // then
        XCTAssertEqual(
            viewModel.estimatedSleepTimeText,
            estimatedSleepTimeText(isAlarmOn: viewModel.isAlarmOn, alarmTime: viewModel.alarmTime)
        )
    }
}

extension SleepPageViewModelTests {
    private func estimatedSleepTimeText(isAlarmOn: Bool, alarmTime: Date) -> String {
        let now = Date.now
        let minutesInHour = 60
        let hoursInDay = 24

        let nowTotalMinutes = (now.hour * minutesInHour) + now.minutes
        let alarmTotalMinutes = (alarmTime.hour * minutesInHour) + alarmTime.minutes

        let totalDifferenceInMinutes = nowTotalMinutes < alarmTotalMinutes
            ? alarmTotalMinutes - nowTotalMinutes
            : (hoursInDay * minutesInHour) - nowTotalMinutes + alarmTotalMinutes

        let hours = totalDifferenceInMinutes / minutesInHour
        let minutes = totalDifferenceInMinutes % minutesInHour

        return isAlarmOn
            ? "Predicted sleep duration:" +
            "\n" +
            "\(hours)h" +
            " " +
            "\(minutes)m"
            : " \n "
    }
}
