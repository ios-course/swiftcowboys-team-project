import Foundation

final class SleepPageViewModel: ObservableObject {
    @Published var isAlarmOn = false
    @Published var isSleepInProgress = false
//    @Published var isSleepInProgress = false {
//        didSet { store(sleepingState: isSleepInProgress) }
//    }

    @Published var alarmTime: Date = .now {
        didSet {
            updateEstimatedSleepTime
        }
    }

    init() {
        isSleepInProgress = getSleepingState()
    }

    var alarmText: String {
        let isAlarmOnText = "\(alarmPrefixText) \(alarmTime.hour):\(alarmTime.minutes)"
        return isAlarmOn ? isAlarmOnText : isAlarmOffText
    }

    var buttonText: String {
        isSleepInProgress ? stopSleepingButtonText : startSleepingButtonText
    }

    var estimatedSleepTimeText: String {
        let sleepTime = alarmTime.addingTimeInterval(10 * 60)
        return "\(estimatedSleepTimePrefixText):\n\(sleepTime.hour)h \(sleepTime.minutes)m"
    }

    private func store(sleepingState: Bool) {
        UserDefaults
            .sharedAppPreferences?
            .set(sleepingState, forKey: UserDefaults.Key.isSleepInProgress)
    }

    private func getSleepingState() -> Bool {
        UserDefaults
            .sharedAppPreferences?
            .bool(forKey: UserDefaults.Key.isSleepInProgress) ?? false
    }

    private updateEstimatedSleepTime() {

    }

    private let alarmPrefixText = "Alarm"
    private let isAlarmOffText = "No Alarm"

    private let stopSleepingButtonText = "STOP SLEEPING"
    private let startSleepingButtonText = "START SLEEPING"

    private let estimatedSleepTimePrefixText = "Predicted sleep duration"
}
