import SwiftUI

/// A label that shows a center-aligned multiline bold text.
struct MultilineCenteredLabelView: View {
    /// A text to show in the label.
    let text: String

    var body: some View {
        Text(text)
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
            text: "The first line text\nThe second line text"
        )
    }
}
