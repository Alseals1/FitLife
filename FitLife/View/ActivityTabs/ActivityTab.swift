import SwiftUI

enum CustomTabSwitch: String {
    case discovery = "Discovery"
    case nutrition = "Nutrition"
    case workout = "Workouts"
}

struct ActivityTab: View {
    @State private var selectedTab: CustomTabSwitch = .discovery
     var tabs: [CustomTabSwitch]
   
    var body: some View {
        VStack {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Button(action: {
                        selectedTab = tab
                    }, label: {
                        ZStack {
                            tab == selectedTab ? Color.buttonorange : Color.lighterGrayColor
                            
                            Text(tab.rawValue)
                                .font(.custom(FontManager.Inter.regular, size: 12))
                                .foregroundColor(tab == selectedTab ? Color.white : Color.black)
                                .padding(.horizontal)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(height: 40)
                        .padding(.bottom, 25)
                    })
                    
                }
            }
            
            
            
            switch selectedTab {
            case .discovery:
                DiscoveryView()
            case .nutrition:
                NutritionView()
                case .workout:
                    Text("WorkoutView")
            }
        }
    }
}

struct ActivityTab_Previews: PreviewProvider {
    static var previews: some View {
        ActivityTab(tabs: [.discovery, .nutrition, .workout])
    }
}

