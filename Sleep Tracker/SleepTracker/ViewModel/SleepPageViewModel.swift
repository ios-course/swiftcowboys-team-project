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
        didSet {
            store(alarmStatus: isAlarmOn)
            updateEstimatedSleepTimeText()
        }
    }

    /// Indicates the sleeping state.
    ///
    /// Returns `true` if the sleep is in progress, otherwise `false`.
    ///
    /// The property publishes updates when the value is changed.
    @Published var isSleepInProgress = false {
        didSet {
            store(sleepingState: isSleepInProgress)
        }
    }

    /// A time when the alarm goes off.
    ///
    /// The property publishes updates when the value is changed.
    @Published var alarmTime: Date = .now {
        didSet {
            store(alarmTime: alarmTime)
            updateEstimatedSleepTimeText()
        }
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
        isAlarmOn = getAlarmStatus()
        alarmTime = !isAlarmOn ? .now : (getAlarmTime() ?? .now)

        if !isSleepInProgress {
            updateEstimatedSleepTimeText()
        }
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

        let estimatedSleepTimeForEnabledAlarmText =
            "\(estimatedSleepTimePrefixText):" +
            "\n" +
            "\(hours)h \(minutes)m"

        estimatedSleepTimeText = isAlarmOn
            ? estimatedSleepTimeForEnabledAlarmText
            : estimatedSleepTimeNotAvailableText
    }

    /**
     Stores a sleeping state in a local storage.

     - Parameter sleepingState: A boolean value indicating the sleeping state.
     */
    private func store(sleepingState: Bool) {
        appPreferences?.set(sleepingState, forKey: UserDefaults.Key.isSleepInProgress)
    }

    /**
     Retrieves a sleeping state from a local storage.

     - Returns: `true` if the sleep is in progress, otherwise `false`.
     */
    private func getSleepingState() -> Bool {
        appPreferences?.bool(forKey: UserDefaults.Key.isSleepInProgress) ?? false
    }

    /**
     Stores an alarm time in a local storage.

     If the passed time is `nil`, the corresponding value is removed from the local storage.

     - Parameter alarmTime: A time when a user's alarm goes off.
     */
    private func store(alarmTime: Date?) {
        guard let alarmTime else {
            appPreferences?.removeObject(forKey: UserDefaults.Key.alarmTime)
            return
        }

        let formattedTime = shortTimeFormatter.string(from: alarmTime)
        appPreferences?.set(formattedTime, forKey: UserDefaults.Key.alarmTime)
    }

    /**
     Retrieves an alarm time from a local storage.

     - Returns: A time when a user's alarm goes off. If the alarm time is unknown returns `nil`.
     */
    private func getAlarmTime() -> Date? {
        let savedTime = appPreferences?.string(forKey: UserDefaults.Key.alarmTime)

        guard let savedTime else { return nil }
        return shortTimeFormatter.date(from: savedTime)
    }

    /**
     Stores an status of the alarm (whether the alarm is on) in a local storage.

     - Parameter alarmTime: A boolean value indicating if the alarm is on.
     */
    private func store(alarmStatus: Bool) {
        appPreferences?.set(alarmStatus, forKey: UserDefaults.Key.isAlarmOn)
    }

    /**
     Retrieves an alarm status from a local storage.

     - Returns: `true` if the alarm was set, otherwise `false`.
     */
    private func getAlarmStatus() -> Bool {
        appPreferences?.bool(forKey: UserDefaults.Key.isAlarmOn) ?? false
    }

    private var shortTimeFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }

    private var appPreferences: UserDefaults? {
        UserDefaults.sharedAppPreferences
    }

    private let alarmPrefixText = "Alarm"
    private let noAlarmText = "No Alarm"
    private let stopSleepingButtonText = "STOP SLEEPING"
    private let startSleepingButtonText = "START SLEEPING"
    private let estimatedSleepTimeNotAvailableText = " \n "
    private let estimatedSleepTimePrefixText = "Predicted sleep duration"
}
