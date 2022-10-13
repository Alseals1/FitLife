import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollView {
                    ForEach(messages) { text in
                        MessageBubble(message: text)
                    }
                }
                .padding(.top, 5)
                .background(.white)
            }
            .background(Color.buttonorange)
            
            MessageField()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
