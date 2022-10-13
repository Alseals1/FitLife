//
//  MessageBubble.swift
//  FitLife
//
//  Created by Alandis Seals on 10/12/22.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State var showTime = false
    var body: some View {
        VStack(alignment: message.recieve ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.recieve ? Color.buttongrey : Color.buttonorange)
                    .cornerRadius(30, corners: message.recieve ? [.bottomRight, .topLeft, .topRight] : [.bottomLeft, .topLeft, .topRight]
                    )
            }
            .frame(maxWidth: 300, alignment: message.recieve ? .leading: .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timeStamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.recieve ? .leading : .trailing)
                
            }
        }
        .frame(maxWidth: .infinity, alignment: message.recieve ? .leading : .trailing)
        .padding(message.recieve ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: messages[0])
    }
}
