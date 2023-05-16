import SwiftUI

/// A rounded button to use in the application.
struct RoundedButtonView: View {
    /// A text on the button.
    @Binding var buttonText: String

    var body: some View {
        Text(buttonText)
            .foregroundColor(.AppScheme.white)
            .font(.system(size: 20, weight: .bold))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.AppScheme.brightBlue)
            .cornerRadius(46)
            .padding(24)
    }
}

struct RoundedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        @State var buttonText = "START SLEEPING"
        RoundedButtonView(buttonText: $buttonText)
    }
}
