import SwiftUI

/// A view displaying information during the current sleep.
struct DuringSleepView: View {
    // MARK: - Public interface

    var body: some View {
        VStack {
            Image
                .AppImage.sleepingAstronaut
            Text(alarmStatusText)
                .font(.system(size: 25))
                .foregroundColor(.AppScheme.white)
        }
    }

    // MARK: - Private interface

    @State private var alarmStatusText = "Alarm 07:30"
}

struct DuringSleepView_Previews: PreviewProvider {
    static var previews: some View {
        DuringSleepView()
    }
}
