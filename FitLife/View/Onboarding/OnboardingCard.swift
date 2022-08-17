//
//  OnboardingPageOne.swift
//  FitLife
//
//  Created by Alandis Seals on 7/18/22.
//

import SwiftUI

struct OnboardingCard: View {
    var title: String
    var image: String
    var description: String
    
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .padding(.horizontal, 59)
                
                VStack(spacing: 0) {
                    Text(title)
                        .font(.custom(FontManager.Satoshi.bold, size: 35))
                        .multilineTextAlignment(.center)
                        .padding(.top, 86)
                       
                    
                    
                    Text(description)
                        .font(.custom(FontManager.Poppins.regular, size: 12))
                        .foregroundColor(Color.subtitleTextColor)
                        .multilineTextAlignment(.center)
                        .padding(.top, 17)
                        
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

struct OnboardingPageOne_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCard(title: "Workout From Home", image: "barbell-image", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Accumsan, sollicitudin ornare cras ut ac. Neque amet, at gravida vel nibh gravida.")
    }
}
