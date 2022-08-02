import SwiftUI

struct AdditionalTrainning: View {
    var body: some View {
        VStack {
            HStack {
                Image("trainerImage")
                    .resizable()
                    .frame(width: 72, height: 72)
                    .padding(.trailing, 24)
                
                VStack(spacing: 8){
                    Text("Deep Amrap Burner")
                        .font(.system(size: 16, weight: .bold))
                    
                    HStack(spacing: 16) {
                        HStack(spacing: 4){
                            Image(systemName: "flame")
                                .foregroundColor(.orange)
                            Text("125 kcal")
                            
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "clock.fill")
                                .foregroundColor(.orange)
                            Text("125 kcal")
                        }
                    }
                }
            }
        }
    }
}

struct AdditionalTrainning_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalTrainning()
    }
}
