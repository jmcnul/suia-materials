

import SwiftUI


struct WelcomeView: View {
    @State private var showHistory = false
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: NSLocalizedString("Welcome", comment: "greeting"))
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {
                    showHistory.toggle()
                }
                    .sheet(isPresented: $showHistory) {
                        HistoryView(showHistory: $showHistory)
                    }
                    .padding(.bottom)
            }
            VStack{
                HStack(alignment: .bottom){
                    VStack{
                        Text(NSLocalizedString("Get Fit", comment: "invitation to exercise"))
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }
                    Image("step-up")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button (action: { selectedTab = 0}) {
                    Text(NSLocalizedString("Get Started", comment: "invitation"))
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 2))
            }
            
        }
    }
}

#Preview {
    WelcomeView(selectedTab: .constant(9))
}
