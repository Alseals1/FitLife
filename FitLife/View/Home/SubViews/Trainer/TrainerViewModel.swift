import Foundation

class TrainerViewModel: ObservableObject {
    @Published var trainer: [Trainer] = []
    
    init() {
        loadJsonFile()
    }
    
    
    //-------->Local JSON File<------------
    func loadJsonFile() {
        if let fileLocation = Bundle.main.url(forResource: "fitlife", withExtension: "json") {
            do{
                let data = try Data(contentsOf: fileLocation)
                let returnData = try JSONDecoder().decode([Trainer].self, from: data)
                self.trainer = returnData
            }catch{
                print(error)
            }
        }
    }
}



