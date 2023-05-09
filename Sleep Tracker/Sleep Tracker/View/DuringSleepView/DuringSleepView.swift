import SwiftUI

struct DuringSleepView: View {

    // MARK: - Public interface
    var body: some View {
        VStack {
            Image("Sleeping_astronaut_image")
            Text(alarmStatusText)
                .font(.system(size: 25))
                .foregroundColor(.white)
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
