import SwiftUI

struct HomeView: View {
    @StateObject private var homeVM = HomeViewModel()
  
    var body: some View {
        VStack {
            HStack{
                Text(homeVM.findTheHour())
                    .font(.custom(FontManager.Satoshi.bold, size: 30))
                Spacer()
                
                HStack {
                    NavigationLink {
                        SearchView()
                    } label: {
                        SmallButtonView(image: "magnifyingglass")
                    }
                    SmallButtonView(image: "line.3.horizontal.decrease")
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
