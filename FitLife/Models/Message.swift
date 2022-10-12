import Foundation

struct Message: Identifiable {
    var id: String
    var text: String
    var recieve: Bool
    var timeStamp: Date
}

var messages: [Message] = [
Message(id: "1", text: "Hey, WYD", recieve: true, timeStamp: Date()),
Message(id: "2", text: "Nothing, Working Out... Wby", recieve: false, timeStamp: Date()),
Message(id: "3", text: "Trying to loose this weight, Could you help me ?", recieve: true, timeStamp: Date()),
Message(id: "4", text: "Hell Yea bro... Hit my line (205-390-2223)", recieve: false, timeStamp: Date()),
Message(id: "5", text: "Alright bet.. I'll call you tomorrow bro", recieve: true, timeStamp: Date()),
Message(id: "6", text: "Ok, Imahe free all day then", recieve: false, timeStamp: Date()),
Message(id: "7", text: "Ok, Thanks", recieve: true, timeStamp: Date()),
Message(id: "8", text: "NP", recieve: false, timeStamp: Date())
]
