import SwiftUI

struct AdditionalTrainning: View {
    var body: some View {
        
        HStack(spacing: 24) {
            Image("trainerImage")
                .resizable()
                .frame(width: 72, height: 72)
            
            VStack(spacing: 8){
                Text("Deep Amrap Burner")
                    .font(.custom(FontManager.Satoshi.bold, size: 16))
                    .foregroundColor(.black)
                
                
                HStack(spacing: 16) {
                    HStack(spacing: 4){
                        Image(systemName: "flame")
                            .foregroundColor(.orange)
                        Text("125 kcal")
                            .font(.custom(FontManager.Satoshi.light, size: 14))
                            .foregroundColor(.black)
                    }
                    
                    HStack(spacing: 4) {
                        Image(systemName: "clock.fill")
                            .foregroundColor(.orange)
                        Text("15min")
                            .font(.custom(FontManager.Satoshi.light, size: 14))
                            .foregroundColor(.black)
                    }
                }
            }
            Spacer()
        }
    }
}

struct AdditionalTrainning_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalTrainning()
    }
}
