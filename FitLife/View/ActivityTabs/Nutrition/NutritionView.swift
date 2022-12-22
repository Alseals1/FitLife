import SwiftUI

struct NutritionView: View {
    @State var searchText: String = ""
    
    var body: some View {
        VStack{
            SearchBarView(searchText: $searchText)
            
            if searchText.isEmpty {
               
               VStack {
                   Text("Search the Facts")
                       .font(.custom(FontManager.Satoshi.bold, size: 44))
                   .foregroundColor(Color.buttongrey.opacity(0.7))
               }
           }
               
          
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NutritionView()
        }
    }
}

