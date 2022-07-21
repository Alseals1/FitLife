import SwiftUI

struct AvatarsView: View {
    let avatars: [String] = ["avatar1", "avatar3", "avatar2"]
    var body: some View {
        HStack {
            Spacer()
            ForEach(avatars, id: \.self) { avatar in
                HStack {
                    Image(avatar)
                        .padding(.horizontal, 23)
                }
            }
        }
    }
}

struct AvatarsView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarsView()
    }
}
