import SwiftUI

struct ReportDetailsView: View {
    var body: some View {
        ZStack {
            RoundedRectangleView()
            VStack {
                NightSleepView()
            }
        }
    }
}

struct ReportDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportDetailsView()
    }
}
