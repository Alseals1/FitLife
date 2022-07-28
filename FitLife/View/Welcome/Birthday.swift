//
//  Birthday.swift
//  FitLife
//
//  Created by Alandis Seals on 7/22/22.
//

import SwiftUI

struct Birthday: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading,spacing: 14) {
                Text("What is your \nbirthday?")
                    .font(.system(size: 35, weight: .bold))
                
                Text("Don’t worry, your birthdate is kept private and never sent , used or sold to any 3rd party app")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.subtitleTextColor)
                    .padding(.trailing, 18)
            }
            .padding(EdgeInsets(top: 111,
                                leading: 25,
                                bottom: 63,
                                trailing: 44))
            
            
           // MARK: Date Picker goes here
            
            Spacer()
            GlobalButton(action: {
                showSheet = true
            }, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, radian: 8, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
                .padding(.horizontal, 25)
                .fullScreenCover(isPresented: $showSheet) {
                    GenderPickView()
                }
        }
        
    }
}


struct Birthday_Previews: PreviewProvider {
    static var previews: some View {
        Birthday()
    }
}
