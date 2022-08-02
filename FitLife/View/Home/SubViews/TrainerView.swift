//
//  TrainerView.swift
//  FitLife
//
//  Created by Alandis Seals on 8/1/22.
//

import SwiftUI

struct TrainerView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Popular Trainer")
                        .font(.system(size: 20, weight: .bold))
                    
                    Spacer()
                }
              
                    
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 40) {
                        ForEach(1..<7) { trainer in
                            PopularTrainer()
                        }
                    }
                    
                }
                
                
                HStack {
                    Text("More Trainer")
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                }
                .padding(.top, 30)
                
                VStack {
                    ScrollView(showsIndicators: false) {
                        ForEach(1..<8) { trainer in
                            MoreTrainer()
                            
                        }
                    }
                }

            }
        }
    }
}

struct TrainerView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerView()
    }
}
