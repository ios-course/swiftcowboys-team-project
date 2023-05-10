import SwiftUI

struct SleepSetupView: View {
    @State var animate = false
    @State private var currentDate = Date()

    var body: some View {
        VStack {
            Image("Sleeping_astronaut_image")
                .resizable()
                .frame(width: 150, height: 150)

            HStack {
                alarmButton
                    .onTapGesture {
                        withAnimation(Animation.spring().speed(1)) {
                            animate.toggle()
                        }
                    }
                    .zIndex(1)
                timePicker
                    .padding(.leading, 40)
                    .zIndex(0)
            }
            estimatedLabel
                .padding(.top, 50)
        }
    }

    private var alarmButton: some View {
        Image("Alarm_symbol_white")
            .resizable()
            .frame(width: 20, height: 20)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .fill(.purple)
                    .frame(width: 70, height: 40)
            }
            .opacity(animate ? 1.0 : 0.5)
    }

    private var timePicker: some View {
        DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
            .labelsHidden()
            .datePickerStyle(.wheel)
            .frame(width: 200, height: 100)
            .clipped()
    }

    private var estimatedLabel: some View {
        Text("estimated bedtime 7:52")
            .font(.system(size: 20, weight: .bold))
    }
}

struct SleepSetupView_Previews: PreviewProvider {
    static var previews: some View {
        SleepSetupView()
    }
}
