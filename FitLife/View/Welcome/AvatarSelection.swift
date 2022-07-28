import SwiftUI

struct AvatarSelection: View {
    @State var showSheet: Bool = false
   
    var body: some View {
        VStack {
            
            VStack {
                
                VStack(alignment: .leading,spacing: 14) {
                    Text("Choose your \navatar")
                        .font(.system(size: 35, weight: .bold))
                    
                    Text("Let us know your personal informations so we can help you building your Program better")
                        .font(.system(size: 14))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.subtitleTextColor)
                        .padding(.trailing, 18)
                }
                .padding(EdgeInsets(top: 111,
                                    leading: 25,
                                    bottom: 63,
                                    trailing: 44))

                AvatarsView()
                Spacer()
                GlobalButton(action: {
                    showSheet = true
                }, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, radian: 8, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
                    .padding(.horizontal, 25)
                    .fullScreenCover(isPresented: $showSheet) {
                        Birthday()
                    }
            }
            
        }
    }
}

struct AvatarSelection_Previews: PreviewProvider {
    static var previews: some View {
        AvatarSelection()
    }
}
