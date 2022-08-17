import SwiftUI

struct TabsView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
           HomeView()
                .tabItem {
                    Image("home")
                    Text("Home")
                        
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Image("search")
                    Text("Search")
                }.tag(1)
            
            Text("Article")
                .tabItem {
                    Image("document-text")
                    Text("Article")
                }
            
          TrainerProfileView()
                .tabItem {
                    Image("user")
                    Text("Profile")
                }
        }
        .accentColor(.buttonorange)
        .tabViewStyle(.automatic)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
