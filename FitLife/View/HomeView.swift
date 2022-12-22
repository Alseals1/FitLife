 import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                Text("Good \nMorning")
                    .font(.custom(FontManager.Satoshi.bold, size: 39))
                    .frame(maxWidth: .infinity, alignment: .leading)
                ActivityTab(tabs: [.discovery, .nutrition, .workout])
               
            }
           
                
 
        }
        .padding(.horizontal, 20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}




