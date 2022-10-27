import Foundation

class TrainerViewModel: ObservableObject {
    @Published var trainer: [Trainer] = []
    
    init() {
        print("Returning Data")
        getTrainer { returnTrainer in
            self.trainer = returnTrainer
        }
    }
    
    func getTrainer(completion: @escaping ([Trainer]) -> ()) {
        guard let url = URL(string: "http://localhost:3002/api/trainers") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let response = response as? HTTPURLResponse,
                  response.statusCode >= 200 && response.statusCode < 300 else { return }
                  guard let data = data else { return }
            print(data)
            
                do{
                    let returnData = try JSONDecoder().decode([Trainer].self, from: data)
                    DispatchQueue.main.async {
                        print(returnData)
                        completion(returnData)
                    }
                }catch{
                    print("🚨ERROR: 🚫 \(error.localizedDescription)")
            }
        }.resume()
    }
}


