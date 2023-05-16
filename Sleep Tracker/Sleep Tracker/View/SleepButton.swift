import SwiftUI

/// A view that displays a button to control sleep.
struct SleepButton: View {
    // MARK: - Public interface

    /// A string value that contains the text on the button. Empty string by default.
    @State var buttonText = String()
    /// A Boolean value that indicates whether the text on the button should change after it is tapped.
    /// False by default.
    @State var shouldChangeButtonText = false
    /// A string value that contains the text on the button after it is tapped. Empty string by default.
    @State var newButtonText = String()

    var body: some View {
        Button(action: {
            changeButtonText(to: newButtonText)
        }, label: {
            RoundedRectangle(cornerRadius: 46)
                .foregroundColor(.AppScheme.brightBlue)
                .frame(width: 338, height: 54)
                .overlay(content: {
                    Text(buttonText)
                        .foregroundColor(.AppScheme.white)
                        .font(.system(size: 20, weight: .bold))
                })
        })
    }

    // MARK: - Private interface

    private func changeButtonText(to newButtonText: String) {
        if shouldChangeButtonText {
            buttonText = newButtonText
        }
    }
}

struct SleepButton_Previews: PreviewProvider {
    static var previews: some View {
        SleepButton(buttonText: "START SLEEPING", shouldChangeButtonText: true, newButtonText: "STOP SLEEPING")
    }
}
