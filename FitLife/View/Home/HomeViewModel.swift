import Foundation

class HomeViewModel: ObservableObject {
    
    func findTheHour() -> String {
        let hour = Calendar.current.component(.hour, from: Date())

        if hour < 12 {
            return "GoodMorning"
        } else if hour == 12 {
            return "GoodAfternoon"
        } else {
            return "GoodEvening"
        }
    }
}
