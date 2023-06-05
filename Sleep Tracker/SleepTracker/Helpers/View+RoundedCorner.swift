import SwiftUI

extension View {
    /// Clips this view to its bounding frame, with the specified corner radius.
    ///
    /// By default, the bounding box of a view only affects its layout,
    /// so any content that extends beyond the edges of the box remains visible.
    ///
    /// The following code applies a corner radius of 100 to the upper right corner of a rectangle:
    /// ```
    /// Rectangle()
    ///    .backgroundStyle(.black)
    ///    .cornerRadius(100, corners: [.topRight])
    /// ```
    ///
    /// - Parameters:
    ///   - radius: The radius to use when drawing rounded corners for the layer’s background.
    ///   - corners: The corners of a rectangle.
    /// - Returns: A view that pushes that view against its bounding box with the specified corner radius and specified corners.
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
