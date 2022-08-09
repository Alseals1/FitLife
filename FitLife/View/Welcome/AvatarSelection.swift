import SwiftUI

struct AvatarSelection: View {
    
    var body: some View {
        VStack {
            HeaderView(title: "Choose your avatar", description: "Choose an avatar that suits you, or upload a \nphoto as you wish") {
                VStack {
                    avatar
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
                    .frame(width: 395)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 57)
                }
            }
        }
    }
    
    @ViewBuilder
   private var avatar: some View {
       let avatars: [String] = ["avatar1", "avatar3", "avatar2"]
        VStack {
            HStack(spacing: 25) {
                ForEach(avatars, id: \.self) { avatar in
                    HStack {
                        Image(avatar)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 83, height: 83)
                    }
                }
            }
            .padding()
        }
    }
}

struct AvatarSelection_Previews: PreviewProvider {
    static var previews: some View {
        AvatarSelection()
    }
}
