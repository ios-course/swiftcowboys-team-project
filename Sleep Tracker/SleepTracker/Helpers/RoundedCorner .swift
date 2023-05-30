import SwiftUI

/// A path consisting of a radius and angles that can be displayed in custom views.
struct RoundedCorner: Shape {
    /// The radius to use when drawing rounded corners for the layer’s background.
    var radius: CGFloat = .infinity
    /// The corners of a rectangle.
    var corners: UIRectCorner = .allCorners

    /// Creates and returns a new Bézier path object with a rectangular path rounded at the specified corners.
    ///
    /// This method creates a closed subpath, proceeding in a clockwise direction
    /// (relative to the default coordinate system) as it creates the necessary line and curve segments.
    ///
    /// - Parameters:
    ///   - rect: The rectangle that defines the basic shape of the path.
    /// - Returns: The outline of a 2D shape.
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
