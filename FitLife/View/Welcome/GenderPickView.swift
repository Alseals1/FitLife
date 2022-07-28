import SwiftUI

struct GenderPickView: View {
    @State var showSheet: Bool = false

    var body: some View {
        
        VStack {
            VStack(alignment: .leading, spacing: 19) {
                Text("Which one a\nare you?")
                    .font(.system(size: 35, weight: .bold))

                Text("Don’t worry, your gender is kept private and never sent , used or sold to any 3rd party \napp")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.subtitleTextColor)
                    .padding(.trailing, 18)

                HStack(spacing: 20) {
                    GenderPicker(action: {}, genderImage: "basicMaleAvatar", genderName: "Male")
                    
                    GenderPicker(action: {}, genderImage: "basicFemaleAvatar", genderName: "Female")
                }
            }
            
            Spacer()
        
            GlobalButton(action: {
                showSheet = true
            }, image: "", text: "Continue", textColor: Color.white, color: Color.buttonorange, radian: 8, shadowColor: Color.black, shadowRadius: 0, shadowX: 0, shadowY: 0)
                .fullScreenCover(isPresented: $showSheet) {
                    BodyMeasurementView()
                }
        }
        .padding(.top, 111)
        .padding(.horizontal, 25)
    }
}

struct GenderPickView_Previews: PreviewProvider {
    static var previews: some View {
        GenderPickView()
    }
}
