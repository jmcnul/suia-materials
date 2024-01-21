

import SwiftUI

struct HeaderView: View {
    @Binding var selectedTab: Int
    let titleText: String
    
    var body: some View {
        VStack {
            Text(titleText)
                .font(.largeTitle)
            HStack {
                ForEach(0 ..< Exercise.exercises.count){ index in
                    let fill = index == selectedTab ? ".fill" : ""
                    Image(systemName: "\(index + 1).circle\(fill)")
                        .onTapGesture {
                            selectedTab = index
                        }
                }
            }.font(.title2)
        }
    }
}
struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
      Group{
          HeaderView(selectedTab: .constant(0), titleText: "Squat").previewLayout(.sizeThatFits)
          HeaderView(selectedTab: .constant(1), titleText: "Step Up")
              .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
              .environment(\.sizeCategory, .accessibilityLarge)
              .previewLayout(.sizeThatFits)
        
      }
     
  }
}
