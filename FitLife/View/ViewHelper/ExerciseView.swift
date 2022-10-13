import SwiftUI

struct ExerciseView: View {
    let image: String
    let rating: String
    let exercice: String
    let trainer: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.gray.opacity(0.1)
            
            HStack(spacing: 12) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 76, height: 76)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    review()
                        .frame(width: 40, height: 16)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(exercice)
                            .font(.custom(FontManager.Inter.bold, size: 14))
                        Text(trainer)
                            .font(.custom(FontManager.Inter.regular, size: 14))
                    }
                }
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .frame(maxWidth: .infinity, maxHeight: 92)
    }
    
    private func review() -> some View {
        ZStack {
            Color.reviewBackgroundColor.opacity(0.4)
            
            HStack(spacing: 3) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(Color.reviewBackgroundColor)
                    .frame(width: 9, height: 9)
                
                Text(rating)
                    .font(.system(size: 10))
            }
        }
        .clipShape(Capsule())
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(image: "trendingImage2", rating: "4.8", exercice: "Pull Ups", trainer: "Robert fox")
        
    }
}
