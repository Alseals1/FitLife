//
//  StrenghtView.swift
//  FitLife
//
//  Created by Alandis Seals on 10/11/22.
//

import SwiftUI

struct StrenghtView: View {
    @State var search: String = ""
    var body: some View {
        ScrollView {
            VStack {
                header()
                SearchBar(searchText: $search, text: "Search Practice")
            
                VStack(alignment: .leading) {
                        Text("Strenght Class")
                        .font(.custom(FontManager.Satoshi.bold, size: 20))
                    
                    ExerciseView(image: "pushups", rating: "4.8", exercice: "Pushups", trainer: "Robert Fox")
                    ExerciseView(image: "pullups", rating: "5.0", exercice: "Pushups", trainer: "Diana Richards")
                    ExerciseView(image: "running", rating: "3.8", exercice: "Pushups", trainer: "Alandis Seals")
                    
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    func header() -> some View {
        HStack {
            Text("Strenght")
                .font(.custom(FontManager.Satoshi.bold, size: 35))
            Spacer()
            SmallPracticeButtons(bgColor: Color.lighterGrayColor, image: "muscleMale", practice: nil)
        }
    }
}

struct StrenghtView_Previews: PreviewProvider {
    static var previews: some View {
        StrenghtView()
    }
}
