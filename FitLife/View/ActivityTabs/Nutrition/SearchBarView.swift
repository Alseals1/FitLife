import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? .buttongrey : .buttonorange
                )
        
            
            TextField("Searh Any Food...", text: $searchText)
                .overlay (
                    Image(systemName: "xmark.circle.fill")
                        .padding(40)
                        .foregroundColor(Color.buttonorange)
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        
                        .onTapGesture {
                            searchText = ""
                        }
                    
                    
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.buttongrey.opacity(0.2))
                .shadow(color: Color.buttongrey, radius: 10, x:0 , y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            SearchBarView(searchText: .constant(""))
                .previewLayout(.sizeThatFits)
            
            
        }
    }
}
