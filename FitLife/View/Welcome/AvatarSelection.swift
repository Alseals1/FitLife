import SwiftUI

struct AvatarSelection: View {
    
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
               
                NavigationLink(destination: {
                    Birthday()
                }, label: {
                    Text("Continue")
                        .foregroundColor(Color.white)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 45)
                })
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.buttonorange))
                    .padding(.top, 57)
            }
            
        }
    }
}

struct AvatarSelection_Previews: PreviewProvider {
    static var previews: some View {
        AvatarSelection()
    }
}
