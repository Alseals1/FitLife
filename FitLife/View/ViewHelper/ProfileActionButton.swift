import SwiftUI

struct ProfileActionButton: View {
        let action: () -> Void
        let text: String
        let image: String
        var body: some View {
            Button(action: {action()}, label: {
                ZStack {
                    Color.buttongrey.opacity(0.1)
                    HStack {
                        Image(systemName: image)
                            .foregroundColor(.orange)
                        .frame(width: 24, height: 24)
                        Text(text)
                            .foregroundColor(.black)
                            .font(.system(size: 12, weight: .regular))
                            .padding(.trailing, 20)
                        
                    }
                }
                
            })
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: 90, height: 50)
    }
}

struct ProfileActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButton(action: {}, text: "Call", image: "phone")
    }
}
