//
//  Birthday.swift
//  FitLife
//
//  Created by Alandis Seals on 7/22/22.
//

import SwiftUI

struct Birthday: View {
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
            NavigationLink(destination: {
                GenderPickView()
            }, label: {
                Text("Continue")
                    .foregroundColor(Color.white)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 45)
            })
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.buttonorange))
                .padding(.top, 57)
        }
        
    }
}


struct Birthday_Previews: PreviewProvider {
    static var previews: some View {
        Birthday()
    }
}
