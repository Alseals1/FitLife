import SwiftUI

struct RecomendedWorkoutView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Recomended Workout")
                .font(.custom(FontManager.Satoshi.bold, size: 18))
                .frame(maxWidth: .infinity, alignment: .leading)
            recomendedWorkout
        }
    }
    var recomendedWorkout: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image("pullups")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 192)
                .scaledToFill()
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Push the Limit")
                    .font(.custom(FontManager.Satoshi.bold, size: 16))
                HStack(spacing: 20) {
                    HStack {
                        Image(systemName: "flame")
                        Text("360 kcal")
                    }
                    
                    HStack {
                        Image(systemName: "clock")
                        Text("1h 25min")
                    }
                    
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Material.ultraThin)
            .foregroundColor(.white)
        }
        .frame(maxHeight: 192)
        .cornerRadius(20)
    }
}

struct RecomendedWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendedWorkoutView()
    }
}
