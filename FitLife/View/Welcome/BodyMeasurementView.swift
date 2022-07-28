//
//  BodyMeasurementView.swift
//  FitLife
//
//  Created by Alandis Seals on 7/26/22.
//

import SwiftUI

struct BodyMeasurementView: View {
    @State var showSheet: Bool = false
    @State var isSelected: Bool = false
    @State var weight: String = ""
    @State var height: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 34) {
                Text("What are your body measurements?")
                    .font(.system(size: 35, weight: .bold))
                Text("Don’t worry, your gender is kept private and never sent , used or sold to any 3rd party app")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.subtitleTextColor)
                    .padding(.trailing, 18)
            }
            .padding(.top, 104)
            .padding(.bottom, 18)
        
                
            VStack(alignment: .center) {
                    TextField("Your Weight", text: $weight)
                        .padding(.leading, 21)
                        .padding(.vertical, 19)
                        .background(Color.secondaryBaseColor)
                        .cornerRadius(5)
                    
                    TextField("Your Height", text: $height)
                        .padding(.leading, 21)
                        .padding(.vertical, 19)
                        .background(Color.secondaryBaseColor)
                        .cornerRadius(8)
                      
                
            }
            Spacer()
            GlobalButton(action: {
                showSheet = true
            }, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, radian: 8, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
                .fullScreenCover(isPresented: $showSheet) {
                    WorkingOutDaysView()
                }
        }
        .padding(.horizontal, 25)
        
  
    }
}

struct BodyMeasurementView_Previews: PreviewProvider {
    static var previews: some View {
        BodyMeasurementView()
    }
}
