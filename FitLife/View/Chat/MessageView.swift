//
//  MessageView.swift
//  FitLife
//
//  Created by Alandis Seals on 10/12/22.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack {
            TitleRow()
            ScrollView {
                ForEach(messages) { text in
                    MessageBubble(message: text)
                        .padding(5)
                }
            }
            .background(.white)
        }
        .background(Color.buttonorange)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
