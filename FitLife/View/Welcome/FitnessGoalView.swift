import SwiftUI

struct FitnessGoalView: View {
    @State var showSheet: Bool = false
    @State private var isSelected: Bool = false
    
     var fitnessGoals: [String] = ["Manage weight", "Increse daily energy", "Increase muscle mass & size", "Try new exercise", "Workout without going out", "Stay fit everyday"]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 34) {
                Text("Let us know your fitness goals")
                    .font(.system(size: 35, weight: .bold))
                
                VStack(alignment: .leading, spacing: 32) {
                    ForEach(fitnessGoals.indices, id: \.self) { goal in
                              SelectionButton(isSelected: $isSelected, goals: fitnessGoals[goal])
                    }
                }
                .padding(.top, 47)
                Spacer()
            }
            .padding(.top, 52)
        .padding(.leading, 25)
            
            Spacer()
            
            GlobalButton(action: {
                showSheet = true
            }, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, radian: 8, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
            .sheet(isPresented: $showSheet, content: {
                FinalWelcomView()
                    
            })
            
            
        }
    }
}

struct FitnessGoalView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessGoalView()
    }
}
