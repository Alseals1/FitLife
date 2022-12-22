import SwiftUI

struct GoalView: View {
    var goal: String
    var progess : String
    var subject: String
    
    var body: some View {
        VStack {
            VStack {
                Text("Daily \(subject)")
                goals
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.lighterGrayColor)
                .shadow(color: .black.opacity(0.2) ,radius: 2, x: 0, y: 2)
            )
            .foregroundColor(.black)
        }
    }
    var goals: some View {
        HStack {
            Text(progess)
                .offset(y: -10)
                .font(.system(size: 20))
                Text("/")
                .font(.system(size: 60))
            Text(goal)
                .offset(y: 10)
                .font(.system(size: 30))
        }.padding()
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView(goal: "\(2500)", progess: "\(0000)", subject: "Calories")
    }
}
