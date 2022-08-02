import SwiftUI

struct SmallPracticeButtons: View {
    let bgColor: Color
    let image: String
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                bgColor
                Image(image)
                    .resizable()
                    .frame(width: 31, height: 31)
            }
        })
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .frame(width: 49, height: 49)
    }
}

struct SmallPracticeButtons_Previews: PreviewProvider {
    static var previews: some View {
        SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "yogaMale", action: {})
    }
}
