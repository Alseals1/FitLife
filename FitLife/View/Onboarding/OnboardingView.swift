import SwiftUI

struct OnboardingView: View {
    var body: some View {
            TabView {
                OnboardingCard(title: "Workout From Home", image: "barbell-image",
                               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Accumsan, sollicitudin ornare cras ut ac. Neque amet, at gravidavel nibh gravida.")
                
                
                OnboardingCard(title: "Choose us, Choose health.", image: "heartbeat-image",
                               description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Accumsan, sollicitudin ornare cras ut ac. Neque amet, at gravida vel nibh gravida.")
                Verification()
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
