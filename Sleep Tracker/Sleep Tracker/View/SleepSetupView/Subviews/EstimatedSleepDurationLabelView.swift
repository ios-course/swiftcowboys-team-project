import SwiftUI

/// A view that shows the predicted duration of sleep.
struct EstimatedSleepDurationLabelView: View {
    var body: some View {
        Text("Predicted sleep duration:\n07:52")
            .multilineTextAlignment(.center)
            .font(.system(size: 20,
                          weight: .bold))
            .padding(.top, 50)
    }
}

struct EstimatedSleepDurationLabelView_Previews: PreviewProvider {
    static var previews: some View {
        EstimatedSleepDurationLabelView()
    }
}
