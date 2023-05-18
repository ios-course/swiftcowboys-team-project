import SwiftUI

/// A view showing how long the user will sleep.
struct EstimatedLabel: View {
    var body: some View {
        Text("estimated bedtime 07:52")
            .font(.system(size: 20,
                          weight: .bold))
            .padding(.top, 50)
    }
}

struct EstimatedLabel_Previews: PreviewProvider {
    static var previews: some View {
        EstimatedLabel()
    }
}
