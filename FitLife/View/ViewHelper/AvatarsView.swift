import SwiftUI

struct AvatarsView: View {
    let avatars: [String] = ["avatar1", "avatar3", "avatar2"]
    var body: some View {
        VStack {
            HStack {
             
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

struct AvatarsView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarsView()
    }
}
