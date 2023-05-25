import SwiftUI

/// A label that shows a center-aligned multiline bold text.
struct MultilineCenteredLabelView: View {
    /// A text to show in the label.
    @State var text: String
    /// A time to show in the label.
    @Binding var time: String

    var body: some View {
        Text(text + time)
            .multilineTextAlignment(.center)
            .font(
                .system(
                    size: 20,
                    weight: .bold
                )
            )
    }
}

struct MultilineCenteredLabelView_Previews: PreviewProvider {
    static var previews: some View {
        MultilineCenteredLabelView(
            text: "Text\n",
            time: .constant("7h 2m")
        )
    }
}
