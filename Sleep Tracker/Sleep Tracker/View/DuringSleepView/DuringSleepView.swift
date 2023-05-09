import SwiftUI

struct DuringSleepView: View {
    var body: some View {
        VStack {
            Image("Sleeping_astronaut_image")
            Text("Alarm 07:30")
                .font(.system(size: 25))
                .foregroundColor(.white)
        }
    }
}

struct DuringSleepView_Previews: PreviewProvider {
    static var previews: some View {
        DuringSleepView()
    }
}
