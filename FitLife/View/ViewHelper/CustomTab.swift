import SwiftUI

enum CustomTabSwitch: String {
    case discover = "Discovery"
    case trainers = "Trainers"
    case myWorkout = "My Workouts"
}
struct CustomTab: View {
    @State private var currentTab: CustomTabSwitch = .discover
    
    var tabs: [CustomTabSwitch]
    
    var body: some View {
        VStack {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Button(action: {
                        currentTab = tab
                    }, label: {
                        ZStack {
                            tab == currentTab ? Color.buttonorange : Color.buttongrey.opacity(0.1)
                            
                            Text(tab.rawValue)
                                .font(.custom(FontManager.Inter.regular, size: 12))
                                .foregroundColor(tab == currentTab ? Color.white : Color.black)
                                .padding(.horizontal)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 110, height: 40 )
                    })
                }
            }
            
            switch currentTab {
            case .discover:
                DicoveryView()
            case .myWorkout:
                MyWorkoutsView()
            case .trainers:
                TrainerView()
            }
        }
    }
}

struct CustomTab_Previews: PreviewProvider {
    static var previews: some View {
        CustomTab(tabs: [.discover, .trainers, .myWorkout])
    }
}
