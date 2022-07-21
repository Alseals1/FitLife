import SwiftUI

struct GlobalButton: View {
    let action: () -> Void
    let image: String
    let text: String
    let textColor: Color
    let color: Color
    let value: CGFloat
    let shadowColor: Color
    let shadowRadius: CGFloat
    let shadowX: CGFloat
    let shadowY: CGFloat
    //let opacity: CGFloat
    
    var body: some View {
     
        
        // TODO: Make this view a global button with TEXT, COLOR, WIDTHMAX, HIGHTMAX, CGFLOAT
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
        .background(RoundedRectangle(cornerRadius: value).fill(color).shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY))
        
    }
}

struct GlobalButton_Previews: PreviewProvider {
    static var previews: some View {
        GlobalButton(action: {}, image: "", text: "Continue with email", textColor: Color.blue, color: Color.buttonorange, value: 4, shadowColor: .black, shadowRadius: 4, shadowX: 0, shadowY: 4 )
    }
 
}
