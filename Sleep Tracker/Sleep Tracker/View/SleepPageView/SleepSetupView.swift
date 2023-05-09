import SwiftUI

struct SleepSetupView: View {
    var body: some View {
        VStack {
            Image("Sleeping_astronaut_image")
                .resizable()
                .frame(width: 150, height: 150)

            HStack {
                alarmButton
            }
        }
    }

    // MARK: - Alarm Button

    private var alarmButton: some View {
        Image("Alarm_symbol_white")
            .resizable()
            .frame(width: 20, height: 20)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .fill(.purple)
                    .frame(width: 70, height: 40)
            }
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        SleepSetupView()
    }
}
