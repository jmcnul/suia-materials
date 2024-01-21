/// C

import SwiftUI

struct SuccessView: View {
    @Binding var selectedTab: Int
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
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
            VStack {
                Spacer()
                Button("Continue") { 
                    presentationMode.wrappedValue.dismiss()
                    selectedTab = 9
                }
                    .padding()
            }
        }
    }
    
    struct SuccessView_Previews: PreviewProvider {
        static var previews: some View {
            SuccessView(selectedTab: .constant(3))
        }
    }
}
