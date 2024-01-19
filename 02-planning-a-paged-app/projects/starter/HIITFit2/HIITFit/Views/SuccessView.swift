/// C

import SwiftUI

struct SuccessView: View {
    var body: some View {
        VStack {
            Image(systemName: "hand.raised.fill")
                .resizedToFill(width: 75, height: 75)
                .foregroundColor(.purple)
            Text("High Five!")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Good job completing all four exercizes!")
            Text("Remember tomorrow's another day.")
            Text("So eat well and get some rest.")
        }
    }
}

#Preview {
    SuccessView()
}
