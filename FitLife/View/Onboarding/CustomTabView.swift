import SwiftUI

struct CustomTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                OnboardingView(title: "Workout From Home", image: "barbell-image",
                               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Accumsan, sollicitudin ornare cras ut ac. Neque amet, at gravidavel nibh gravida.")
                
                
                OnboardingView(title: "Choose us, Choose health.", image: "heartbeat-image",
                               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Accumsan, sollicitudin ornare cras ut ac. Neque amet, at gravida vel nibh gravida.")
                Verification()
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
