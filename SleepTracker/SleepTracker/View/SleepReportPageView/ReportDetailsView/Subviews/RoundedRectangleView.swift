import SwiftUI

/// A view which has a right upper rounded corner.
struct RoundedRectangleView: View {
    // MARK: - Non-private interface

    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(cornerRadiusForRoundedRectangleView,
                              corners: [.topRight])
                .frame(height: UIScreen.main.bounds.height / multiplierForRoundedRectangleView)
        }
    }

    // MARK: - Private interface

    private let cornerRadiusForRoundedRectangleView: CGFloat = 80
    private let multiplierForRoundedRectangleView: CGFloat = 1.5
}

struct RoundedRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleView()
            .previewLayout(.sizeThatFits)
    }
}
