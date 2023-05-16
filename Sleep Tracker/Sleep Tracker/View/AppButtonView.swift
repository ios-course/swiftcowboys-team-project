import SwiftUI

/// A button to use in the application.
struct AppButtonView: View {
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

struct AppButtonView_Previews: PreviewProvider {
    static var previews: some View {
        @State var buttonText = "START SLEEPING"
        AppButtonView(buttonText: $buttonText)
    }
}
