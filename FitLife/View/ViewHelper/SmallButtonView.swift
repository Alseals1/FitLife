import SwiftUI

struct SmallButtonView: View {
    let image: String
    
    var body: some View {
        ZStack {
            Color.buttongrey
            Image(systemName: image)
                .foregroundColor(.black)
                .frame(width: 17.2, height: 17.31)
        }
        .clipShape(Circle())
        .frame(width: 43, height: 43)
    }
}

struct SmallButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SmallButtonView(image: "magnifyingglass")
    }
}
