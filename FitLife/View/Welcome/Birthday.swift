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
            
            HeaderView(title: "What is your birthday?", description: "Don’t worry, your birthdate is kept private and never sent , used or sold to any 3rd party app") {
                VStack {
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
        
    }
}


struct Birthday_Previews: PreviewProvider {
    static var previews: some View {
        Birthday()
    }
}
