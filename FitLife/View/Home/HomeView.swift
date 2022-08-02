import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Good \nMorning")
                    .font(.system(size: 39, weight: .bold))
                Spacer()
                
                HStack {
                    SmallButtonView(action: {}, image: "magnifyingglass")
                    SmallButtonView(action: {}, image: "line.3.horizontal.decrease")
                }
                .offset(y: -10)
            }
           
            CustomTab(tabs: [.discover, .trainers, .myWorkout])
                .padding(.top, 24)
            
            Spacer()
        }
        .padding(25)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
