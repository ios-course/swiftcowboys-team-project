import SwiftUI

/// A rectangular shape in bright blue with rounded corners.
/// In the center of the shape is white text.
struct RoundedRectangleView: View {
    /// A text on the rectangle.
    @Binding var rectangleText: String

    var body: some View {
        Text(rectangleText)
            .foregroundColor(.AppScheme.white)
            .font(.system(size: 20, weight: .bold))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.AppScheme.brightBlue)
            .cornerRadius(46)
            .padding(24)
    }
}

struct RoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        @State var rectangleText = "START SLEEPING"
        RoundedRectangleView(rectangleText: $rectangleText)
    }
}
