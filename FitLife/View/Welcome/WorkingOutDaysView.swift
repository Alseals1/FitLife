//
//  WorkingOutDaysView.swift
//  FitLife
//
//  Created by Alandis Seals on 7/26/22.
//

import SwiftUI

struct WorkingOutDaysView: View {
    @State var showSheet: Bool = false
    @State var selection: String = "1"
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 34) {
                Text("how many days are you working out per week?")
                    .font(.system(size: 35, weight: .bold))
              
               
            }
            .padding(.top, 104)
        .padding(.bottom, 18)
            
            HStack {
               
                    HStack {
                        ForEach(1...10, id: \.self){ number in
                            Picker(selection: $selection, label: Text("Picker")) {
                                Text("\(number)")
                                .font(.system(size: 47))
                        }.pickerStyle(.wheel)
                    }
                }
                
                
            }
           //.labelsHidden()
            

            
            GlobalButton(action: {
                showSheet = true
            }, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, radian: 8, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
            .fullScreenCover(isPresented: $showSheet, content: {
                FitnessGoalView()
            })

        }
        .padding(.horizontal, 25)
    }
}

struct WorkingOutDaysView_Previews: PreviewProvider {
    static var previews: some View {
        WorkingOutDaysView()
    }
}
