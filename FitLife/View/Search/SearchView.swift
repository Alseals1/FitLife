import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var recentSearch = ["Push Aps", "Best Trainer", "Six Pack In One Day"]
    
    var body: some View {
        VStack {
            SearchBar(searchText: $searchText, text: "Search Exercise")
            
        ScrollView {
                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Recent Search")
                            .font(.system(size: 14, weight: .medium))
                        
                        ForEach(recentSearch, id: \.self) { text in
                            HStack {
                                Image(systemName: "clock")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 16, height: 16)
                                    .foregroundColor(Color.buttongrey)
                                Text(text)
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(Color.buttongrey)
                                Spacer()
                                
                                Image(systemName: "arrow.up.left")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 6.67, height: 6.67)
                                    .foregroundColor(Color.buttongrey)
                            }
                        }
                    }
                    Spacer()
                }
            }
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
