import Foundation

/// A view model that prepares and provides data to the `SleepSetupView`.
final class SleepSetupViewModel: ObservableObject {
    /// A sleep duration which is equal to the current time subtracted from the time selected by the user.
    /// It can be from 0m to 23h 59m.
    @Published var sleepDuration = String()
    /// A time selected by the user in the picker.
    @Published var selectedTime = Date() {
        didSet {
            if selectedTime != oldValue {
                calculateSleepDuration()
            }
        }
    }

    private func calculateSleepDuration() {
        let timeIntervalBeforeTheSelectedTime = selectedTime.timeIntervalSinceNow
        let timeIntervalRoundedUpToTheNearestMinute = roundUpToTheNearestMinute(
            timeInterval: timeIntervalBeforeTheSelectedTime
        )
        let finalTimeInterval = moveOnTheNextDayIfNeeded(timeInterval: timeIntervalRoundedUpToTheNearestMinute)
        let timeIntervalString = formatTheTimeInterval(timeInterval: finalTimeInterval)
        sleepDuration = timeIntervalString
    }

    private func formatTheTimeInterval(timeInterval: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .abbreviated

        guard let timeIntervalString = formatter.string(from: timeInterval) else { return "" }

        return timeIntervalString
    }

    private func moveOnTheNextDayIfNeeded(timeInterval: TimeInterval) -> TimeInterval {
        let day: Double = 86400
        let currentTime: Double = 0

        guard timeInterval >= currentTime else {
            let timeIntervalUntilTomorrow = timeInterval + day
            return timeIntervalUntilTomorrow
        }

        return timeInterval
    }

    private func roundUpToTheNearestMinute(timeInterval: TimeInterval) -> TimeInterval {
        let roundingValue: Double = 60
        let roundedTimeInterval = ((timeInterval / roundingValue).rounded(.up)) * roundingValue

        return roundedTimeInterval
    }
}
