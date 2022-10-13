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
                            popularTrainer
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
                            moreTrainer
                            
                        }
                    }
                }

            }.padding(25)
        }
    }
    
    @ViewBuilder
    private var popularTrainer: some View {
        HStack {
            VStack(spacing: 12){
                Image("trainerImage")
                    .clipShape(Circle())
                VStack {
                    Text("Aquaman")
                        .font(.custom(FontManager.Inter.bold, size: 14))
                    
                    Text("Pro trainer")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color.gray)
                }
            }
        }
    }

    var moreTrainer: some View {
        HStack {
            ZStack {
                Color.lighterGrayColor
                HStack {
                    Image("trainerImage")
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4){
                        Text("The Batman")
                            .font(.custom(FontManager.Inter.bold, size: 14))
                           
                        Text("Pro Trainer")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    
                    HStack {
                        ZStack {
                            Color.reviewBackgroundColor.opacity(0.5)
                            HStack(spacing: 3) {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .foregroundColor(Color.reviewBackgroundColor)
                                .frame(width: 13, height: 13)
                                
                                Text("4.8")
                                    .font(.system(size: 14, weight: .medium))
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(width: 58, height: 26)
                }
                .padding(.leading, 12)
                .padding(.trailing, 20)
            }
        }
        .frame(width: 335, height: 81)
        .cornerRadius(15)
    }
}

struct TrainerView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerView()
    }
}
