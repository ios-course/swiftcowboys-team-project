import Foundation

/// Manages UI of the `SleepPageView` and contains a related business logic.
final class SleepPageViewModel: ObservableObject {
    // MARK: - Non-private interface

    /// Indicates whether alarm is set.
    ///
    /// Returns `true` if the alarm is on, otherwise `false`.
    ///
    /// The property publishes updates when the value is changed.
    @Published var isAlarmOn = false {
        didSet { updateEstimatedSleepTimeText() }
    }

    /// Indicates the sleeping state.
    ///
    /// Returns `true` if the sleep is in progress, otherwise `false`.
    ///
    /// The property publishes updates when the value is changed.
    @Published var isSleepInProgress = false {
        didSet { store(sleepingState: isSleepInProgress) }
    }

    /// A time when the alarm goes off.
    ///
    /// The property publishes updates when the value is changed.
    @Published var alarmTime: Date = .now {
        didSet { updateEstimatedSleepTimeText() }
    }

    /// A text to show as an estimated sleep time.
    ///
    /// The property publishes updates when the value is changed.
    @Published var estimatedSleepTimeText: String = ""

    /// A text to show as an alarm status.
    var alarmText: String {
        let alarmShortTime = String(format: "%02d:%02d", alarmTime.hour, alarmTime.minutes)
        return isAlarmOn ? "\(alarmPrefixText) \(alarmShortTime)" : noAlarmText
    }

    /// A text to show on the button that toggle the sleeping state.
    var bottomButtonText: String {
        isSleepInProgress ? stopSleepingButtonText : startSleepingButtonText
    }

    /// Creates a new instance of the view model.
    init() {
        isSleepInProgress = getSleepingState()
        updateEstimatedSleepTimeText()
    }

    // MARK: - Private interface

    /**
     Updates a text for the estimated sleep time based on a current time and a status of the alarm.
     */
    private func updateEstimatedSleepTimeText() {
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

        estimatedSleepTimeText = isAlarmOn
            ? "\(estimatedSleepTimePrefixText):" +
            "\n" +
            "\(hours)h" +
            " " +
            "\(minutes)m"
            : estimatedSleepTimeNotAvailableText
    }

    /**
     Stores a sleeping state in a local storage.

     - Parameter sleepingState: A boolean value indicating the sleeping state.
     */
    private func store(sleepingState: Bool) {
        UserDefaults
            .sharedAppPreferences?
            .set(sleepingState, forKey: UserDefaults.Key.isSleepInProgress)
    }

    /**
     Retrieves a sleeping state from a local storage.

     - Returns: `true` if the sleep is in progress, otherwise `false`.
     */
    private func getSleepingState() -> Bool {
        UserDefaults
            .sharedAppPreferences?
            .bool(forKey: UserDefaults.Key.isSleepInProgress) ?? false
    }

    private let alarmPrefixText = "Alarm"
    private let noAlarmText = "No Alarm"
    private let stopSleepingButtonText = "STOP SLEEPING"
    private let startSleepingButtonText = "START SLEEPING"
    private let estimatedSleepTimeNotAvailableText = " \n "
    private let estimatedSleepTimePrefixText = "Predicted sleep duration"
}
