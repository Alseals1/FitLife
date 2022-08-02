//
//  SigninButton.swift
//  FitLife
//
//  Created by Alandis Seals on 8/1/22.
//

import SwiftUI

struct SigninButton: View {
    let action: () -> Void
    let image: String
    let text : String
    let textColor: Color
    let buttonColor: Color
    let radian : CGFloat
    let shadowColor: Color
    let shadowRadius: CGFloat
    let shadowX: CGFloat
    let shadowY: CGFloat
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            HStack {
                Image(image)
                Text(text)
                    .foregroundColor(textColor)
            }
            
        })
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 70)
        .padding(.vertical, 16)
        .background(RoundedRectangle(cornerRadius: radian).fill(buttonColor).shadow(color: shadowColor, radius: radian, x: shadowX, y: shadowY))
    }
}

struct SigninButton_Previews: PreviewProvider {
    static var previews: some View {
        SigninButton(action: {}, image: "google-icon", text: "Gmail", textColor: Color.blue, buttonColor: Color.buttongrey, radian: 10, shadowColor: Color.black, shadowRadius: 4, shadowX: 0, shadowY: 4)
    }
}
//GlobalButton(action: {}, image: "google-icon", text: "Gmail", textColor: Color.blue, color: Color.buttongrey.opacity(0.1), radian: 4, shadowColor: Color.clear, shadowRadius: 0, shadowX: 0,shadowY: 0)
