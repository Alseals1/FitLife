import SwiftUI

struct WelcomeView: View {
    @State var showSheet: Bool = false
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                    Text("Welcome, Batman!")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(Color.baseTextColor)
                        .padding(.horizontal, 35)
                        .padding(.bottom, 21)
                    
                    
                    Text("Let us know your personal informations so we can help you building your Program better")
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 44)
                    
                    
                    NavigationLink(destination: {
                        AvatarSelection()
                    }, label: {
                        Text("Next")
                            .foregroundColor(Color.white)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 45)
                    }).background(RoundedRectangle(cornerRadius: 10).fill(Color.buttonorange))
                        .padding(.top, 57)
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
