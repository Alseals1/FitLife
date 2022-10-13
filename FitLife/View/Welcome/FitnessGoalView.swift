import SwiftUI

struct FitnessGoalView: View {
    
    @State private var isSelected: Bool = false
    @State var showView: Bool = false
    
    var fitnessGoals: [String] = ["Manage weight", "Increse daily energy", "Increase muscle mass & size", "Try new exercise", "Workout without going out", "Stay fit everyday"]
    
    var body: some View {
        VStack {
            HeaderView(title: "Let us know your fitness goals", description: nil) {
                VStack(alignment: .leading, spacing: 32) {
                    ForEach(fitnessGoals.indices, id: \.self) { goal in
                        SelectionButton(isSelected: $isSelected, goals: fitnessGoals[goal])
                    }
                }
                .padding(.top, 47)
                
                Spacer()
                
                Button(action: {
                    if isSelected {
                        showView.toggle()
                    }
                }, label: {
                    Text("Continue")
                        .foregroundColor(Color.white)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 45)
                })
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.buttonorange))
                .padding(.top, 57)
                .sheet(isPresented: $showView) {
                    if #available(iOS 16.0, *) {
                        FinalWelcomView()
                            .presentationDetents([.medium])
                    } else {
                        FinalWelcomView()
                    }
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
