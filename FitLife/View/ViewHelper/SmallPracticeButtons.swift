import SwiftUI

struct SmallPracticeButtons: View {
    let bgColor: Color
    let image: String
    let practice: String?
    
    var body: some View {
        VStack {
            ZStack {
                    bgColor
                    Image(image)
                        .resizable()
                        .frame(width: 31, height: 31)
                }.clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 49, height: 49)
            
            Text(practice ?? "")
                .font(.custom(FontManager.Inter.regular, size: 12))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .lineLimit(0)
        }
    }
}

struct SmallPracticeButtons_Previews: PreviewProvider {
    static var previews: some View {
        SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "yogaMale", practice: "Strength")
    }
}
