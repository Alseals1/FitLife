import SwiftUI

struct TabsView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
               HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }.tag(1)
                
               BlogView()
                    .tabItem {
                        Image(systemName: "doc.text")
                        Text("Article")
                    }.tag(2)
                
              TrainerProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }.tag(3)
            }
            .accentColor(.buttonorange)
        .tabViewStyle(.automatic)
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
