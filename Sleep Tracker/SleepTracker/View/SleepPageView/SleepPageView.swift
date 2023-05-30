import SwiftUI

struct SleepPageView: View {
    // MARK: - Non-private interface

    @ObservedObject var viewModel: SleepPageViewModel

    var body: some View {
        ZStack {
            Image.AppImage.generalBackground
                .resizable()

            VStack {
                Group {
                    if viewModel.isSleepInProgress {
                        DuringSleepView(
                            alarmStatusText: viewModel.alarmText
                        )
                    } else {
                        SleepSetupView(
                            isAlarmOn: $viewModel.isAlarmOn,
                            selectedTime: $viewModel.alarmTime,
                            estimatedText: viewModel.estimatedSleepTimeText
                        )
                        .padding(.horizontal, 24)
                    }
                }
                .frame(maxHeight: .infinity)

                Button(viewModel.buttonText) {
                    handleButtonClick()
                }
                .buttonStyle(RoundedRectangleBlue())
                .padding(.horizontal, 36)
                .padding(.bottom, 48)
            }
        }
        .preferredColorScheme(.dark)
    }

    // MARK: - Private interface

    private func handleButtonClick() {
        if !viewModel.isSleepInProgress {
            viewModel.isSleepInProgress.toggle()
        }
    }
}

struct SleepPageView_Previews: PreviewProvider {
    static var previews: some View {
        SleepPageView(
            viewModel: SleepPageViewModel()
        )
    }
}
