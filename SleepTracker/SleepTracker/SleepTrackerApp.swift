import SwiftUI

@main
struct SleepTrackerApp: App {
    /// A view model that provides data in the view.
    @ObservedObject var viewModel = SleepPageViewModel()

    var body: some Scene {
        WindowGroup {
            SleepPageView(viewModel: viewModel)
        }
    }
}
