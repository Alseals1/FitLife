//
//  BodyMeasurementView.swift
//  FitLife
//
//  Created by Alandis Seals on 7/26/22.
//

import SwiftUI

struct BodyMeasurementView: View {
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
            NavigationLink(destination: {
                WorkingOutDaysView()
            }, label: {
                Text("Continue")
                    .foregroundColor(Color.white)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 45)
            })
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.buttonorange))
                .padding(.top, 57)
        }
        .padding(.horizontal, 25)
    }
}

struct BodyMeasurementView_Previews: PreviewProvider {
    static var previews: some View {
        BodyMeasurementView()
    }
}
