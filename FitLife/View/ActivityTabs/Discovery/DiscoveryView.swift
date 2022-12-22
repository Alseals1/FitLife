import SwiftUI

struct DiscoveryView: View {
    var body: some View {
        VStack(spacing: 20) {
            ScrollView(.horizontal ,showsIndicators: false) {
                HStack {
                    GoalView(goal: "\(1500)", progess: "\(2500)", subject: "Calories")
                    GoalView(goal: "\(160)", progess: "\(80)", subject: "Protein")
                    GoalView(goal: "\(125)", progess: "\(90)", subject: "Carbs")
                    GoalView(goal: "\(100)", progess: "\(72)", subject: "Fat")
                }
                .padding(.vertical)
            }
            RecomendedWorkoutView()
            MostViewMeals()
        }
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.vertical, showsIndicators: false) {
            DiscoveryView()
        }
    }
}
