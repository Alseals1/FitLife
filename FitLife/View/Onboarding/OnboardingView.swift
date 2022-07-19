//
//  OnboardingPageOne.swift
//  FitLife
//
//  Created by Alandis Seals on 7/18/22.
//

import SwiftUI

struct OnboardingView: View {
    var title: String
    var image: String
    var description: String
    
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .padding(.horizontal, 59)
                
                VStack(alignment: .center, spacing: 0) {
                    Text(title)
                        .font(.system(size: 35, weight: .bold))
                        .padding(.top, 86)
                        .padding(.horizontal, 18)
                    
                    Text(description)
                        .font(.system(size: 12))
                        .multilineTextAlignment(.center)
                        .padding(.top, 17)
                        .padding(.horizontal, 15)
                }
            }
        }
    }
}

struct OnboardingPageOne_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(title: "Workout From Home", image: "barbell-image", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Accumsan, sollicitudin ornare cras ut ac. Neque amet, at gravida             vel nibh gravida.")
    }
}
