import SwiftUI

/// A type that applies standard interaction behavior and a custom appearance to all buttons within a view hierarchy.
/// The button will have a rectanglular bright-blue shape with rounded corners.
/// The button will have a label with the white center-aligned text.
///
/// To configure the current button style for a view hierarchy, use the `buttonStyle(_:)` modifier.
struct RoundedRectangleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .font(
                    .system(
                        size: labelTextSize, weight: .bold
                    )
                )
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.AppScheme.white)
                .background(Color.AppScheme.brightBlue)
                .clipShape(Capsule())
                .padding(buttonDefaultPadding)
    }

    private let labelTextSize: CGFloat = 20
    private let buttonDefaultPadding: CGFloat = 24
}

struct RoundedRectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        Button("Press Me!") {}
            .buttonStyle(RoundedRectangleButton())
    }
}
