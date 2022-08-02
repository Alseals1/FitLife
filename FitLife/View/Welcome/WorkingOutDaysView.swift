//
//  WorkingOutDaysView.swift
//  FitLife
//
//  Created by Alandis Seals on 7/26/22.
//

import SwiftUI

struct WorkingOutDaysView: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 34) {
                Text("how many days are you working out per week?")
                    .font(.system(size: 35, weight: .bold))
              
               
            }
            .padding(.top, 104)
        .padding(.bottom, 18)
            
            ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                Text("1")
                Text("2")
                
                DaySelecter()
                
                Text("4")
                Text("5")
                  
               
                
                }
            .font(.system(size: 40))
            .foregroundColor(Color.subtitleTextColor)
            }
            .frame(width: 377, height: 97)
            .padding(.top, 82)
            
          Spacer()
            

            
            NavigationLink(destination: {
                FitnessGoalView()
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

struct WorkingOutDaysView_Previews: PreviewProvider {
    static var previews: some View {
        WorkingOutDaysView()
    }
}
