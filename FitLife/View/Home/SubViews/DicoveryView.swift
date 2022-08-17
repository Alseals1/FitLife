import SwiftUI

struct DicoveryView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack {
                    Text("Practice")
                        .font(.custom(FontManager.Satoshi.bold, size: 20))
                        
                    
                    Spacer()
                }
                HStack(spacing: 40) {
                    SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "muscleMale", action: {})
                    SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "swimmerMale", action: {})
                    SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "yogaMale", action: {})
                    SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "muscleMale", action: {})
                }
                
                VStack {
                    HStack {
                        Text("Trending Working 🔥")
                            .font(.custom(FontManager.Satoshi.bold, size: 18))
                        Spacer()
                    }
                    
                                
                    trendingWorkoutView
                    
                    HStack {
                        Text("Additional training")
                            .font(.custom(FontManager.Satoshi.bold, size: 16))
                            .padding(.top, 24)
                        
                        Spacer()
                    }
                    ForEach(0..<9){ traning in
                        AdditionalTrainning()
                        
                    }
                }
                .padding(.top, 33)
            }
            .padding(25)
        }
    }
    @ViewBuilder
    var trendingWorkoutView: some View {
        ZStack {
            Image("trendingImage")
            VStack {
                HStack {
                    Text("Beginner")
                        .padding(.horizontal, 11)
                        .padding(.vertical, 4)
                        .font(.custom(FontManager.Satoshi.light, size: 10))
                        .foregroundColor(.white)
                        .background(
                            .regularMaterial.opacity(0.6),
                            in: RoundedRectangle(cornerRadius: 6, style: .circular))
                    
                    Text("Full Body")
                        .padding(.horizontal, 11)
                        .padding(.vertical, 4)
                        .font(.custom(FontManager.Satoshi.light, size: 10))
                        .foregroundColor(.white)
                        .background(
                            .regularMaterial.opacity(0.6),
                            in: RoundedRectangle(cornerRadius: 6, style: .circular))
                    
                    Spacer()
                }
                .padding(.top, 20)
               
                Spacer()
                    VStack(spacing: 0) {
                        HStack {
                            Text("Push Your Limit")
                                .font(.custom(FontManager.Satoshi.bold, size: 16))
                            Spacer()
                            ReviewView()
                                .offset(y: 20)
                        }
                        HStack(spacing: 0) {
                                Image(systemName: "flame")
                                .resizable()
                                .frame(width: 9.8, height: 11.2)
                                .padding(.trailing, 6)
                            
                                Text("360 kcal")
                                .font(.custom(FontManager.Satoshi.medium, size: 10))
                                .padding(.trailing, 20)
                            
                                Image(systemName: "clock.fill")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .padding(.trailing, 6)
                            
                                Text("1h 25min" )
                                .font(.custom(FontManager.Satoshi.medium, size: 10))
                            
                            Spacer()
                        }
                        .font(.system(size: 10, weight: .medium))
                        .padding(.bottom, 16)
                }
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 25)
        }
        .frame(width: 327 , height: 192)
        .cornerRadius(8)
    }
}

struct DicoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DicoveryView()
    }
}
