import SwiftUI

struct MyWorkoutsView: View {
    var body: some View {
        VStack {
            ExerciseView(image: "pushups", rating: "4.8", exercice: "Pushups", trainer: "Robert Fox")
            ExerciseView(image: "pullups", rating: "5.0", exercice: "Pushups", trainer: "Diana Richards")
            ExerciseView(image: "running", rating: "3.8", exercice: "Pushups", trainer: "Alandis Seals")
        }
    }
}

struct MyWorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        MyWorkoutsView()
    }
}
