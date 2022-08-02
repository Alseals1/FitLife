import SwiftUI

struct DicoveryView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack {
                    Text("Practice")
                        .font(.system(size: 20, weight: .bold))
                        
                    
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
                            .font(.system(size: 18, weight: .bold))
                        Spacer()
                    }
                    
                                
                    TrendingWorkoutView()
                    
                    HStack {
                        Text("Additional training")
                            .font(.system(size: 16, weight: .bold))
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
}

struct DicoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DicoveryView()
    }
}
