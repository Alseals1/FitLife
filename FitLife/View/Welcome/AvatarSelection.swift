import SwiftUI

struct AvatarSelection: View {
    
   
    var body: some View {
        VStack {
            
            VStack {
                
                VStack(alignment: .leading,spacing: 14) {
                    Text("Choose your \navatar")
                        .font(.system(size: 35, weight: .bold))
                    
                    Text("Let us know your personal informations so we can help you building your Program better")
                }
                .padding(EdgeInsets(top: 111,
                                    leading: 25,
                                    bottom: 63,
                                    trailing: 44))

                AvatarsView()
                Spacer()
                GlobalButton(action: {}, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, value: 10, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
            }
            
        }
    }
}

struct AvatarSelection_Previews: PreviewProvider {
    static var previews: some View {
        AvatarSelection()
    }
}
