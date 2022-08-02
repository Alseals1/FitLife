import SwiftUI

struct FitnessGoalView: View {
    
    @State private var isSelected: Bool = false
    @State var showView: Bool = false
    
     var fitnessGoals: [String] = ["Manage weight", "Increse daily energy", "Increase muscle mass & size", "Try new exercise", "Workout without going out", "Stay fit everyday"]
    
    var body: some View {
        ZStack {
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
                
              
                Button(action: {
                    showView.toggle()
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(Color.white)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 45)
                    
                })
                
              
                Button(action: {
                    showView = true
                }, label: {
                    Text("SHow view")
                })
                .sheet(isPresented: $showView) {
                    FinalWelcomView()
                }
            }
            
           
            
        }
    }
}

struct FitnessGoalView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessGoalView()
    }
}
