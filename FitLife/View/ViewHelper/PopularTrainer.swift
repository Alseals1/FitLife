import SwiftUI

struct PopularTrainer: View {
    var body: some View {
        HStack {
            VStack(spacing: 12){
                Image("trainerImage")
                    .clipShape(Circle())
                VStack {
                    Text("Aquaman")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Pro trainer")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct PopularTrainer_Previews: PreviewProvider {
    static var previews: some View {
        PopularTrainer()
    }
}
