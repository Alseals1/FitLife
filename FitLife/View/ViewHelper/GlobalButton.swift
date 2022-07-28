import SwiftUI

struct GlobalButton: View {
    let action: () -> Void
    let image: String
    let text: String
    let textColor: Color
    let color: Color
    let radian: CGFloat
    let shadowColor: Color
    let shadowRadius: CGFloat
    let shadowX: CGFloat
    let shadowY: CGFloat
    //let opacity: CGFloat
    
    var body: some View {
     
        
        
        Button(action: {action()}) {
            HStack {
                Image(image)
                Text(text)
                    .foregroundColor(textColor)
            }
        }
        
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 70)
        .padding(.vertical, 16)
        .background(RoundedRectangle(cornerRadius: radian).fill(color).shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY))
        
    }
}

struct GlobalButton_Previews: PreviewProvider {
    static var previews: some View {
        GlobalButton(action: {}, image: "", text: "Continue with email", textColor: Color.blue, color: Color.buttonorange, radian: 4, shadowColor: Color.black, shadowRadius: 4, shadowX: 0, shadowY: 4 )
    }
 
}
