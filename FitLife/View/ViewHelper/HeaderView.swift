import SwiftUI

struct HeaderView<Content: View>: View {
    var title: String
    var description: String?
    let content: Content
    
    init(title: String, description: String?, @ViewBuilder content: () -> Content) {
        self.title = title
        self.description = description
        self.content = content()
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading,spacing: 14) {
                Text(title)
                    .font(.system(size: 35, weight: .bold))
                
                if let description = description {
                    Text(description)
                        .font(.system(size: 14))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.subtitleTextColor)
                        .padding(.trailing, 18)
                }
            }
            .padding(EdgeInsets(top: 111,
                                        leading: 25,
                                        bottom: 63,
                                        trailing: 44))
                
                content
           
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Hello World", description: "Hello", content: {})
    }
}
