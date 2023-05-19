import SwiftUI

/// A view that shows the predicted duration of sleep.
struct EstimatedLabelView: View {
    var body: some View {
        Text("Predicted sleep duration:\n07:52")
            .font(.system(size: 20,
                          weight: .bold))
            .padding(.top, 50)
    }
}

struct EstimatedLabelView_Previews: PreviewProvider {
    static var previews: some View {
        EstimatedLabelView()
    }
}
