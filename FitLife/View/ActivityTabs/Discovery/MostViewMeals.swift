import SwiftUI

struct MostViewMeals: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Most Reviewed Meals")
                .font(.custom(FontManager.Satoshi.bold, size: 18))
                .frame(maxWidth: .infinity, alignment: .leading)
            mostViewMeals
            mostViewMeals
            mostViewMeals
            mostViewMeals
            mostViewMeals
            mostViewMeals
        }
    }
    var mostViewMeals: some View {
        HStack {
            HStack {
                Image("salad 1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFill()
                    .cornerRadius(10)
                    .padding(.leading, 10)
                VStack(spacing: 10) {
                    Text("Steak salad")
                        .font(.custom(FontManager.Satoshi.bold, size: 20))
                    Text("900-1000 kcal")
                }
                .padding(.vertical, 10)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "chevron.right")
                .font(.system(size: 26))
                .padding(20)
        }
        .background(Color.buttongrey.opacity(0.2))
        .cornerRadius(10)
    }
}

struct MostViewMeals_Previews: PreviewProvider {
    static var previews: some View {
        MostViewMeals()
    }
}
