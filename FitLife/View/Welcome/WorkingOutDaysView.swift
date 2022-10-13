import SwiftUI

struct WorkingOutDaysView: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        VStack {
            HeaderView(title: "how many days are you working out per week?", description: nil) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 40) {
                        Text("1")
                        Text("2")
                        daySelecter
                        Text("4")
                        Text("5")
                    }
                    .font(.system(size: 40))
                    .foregroundColor(Color.subtitleTextColor)
                }
                .frame(width: 377, height: 97)
                .padding(.top, 82)
                
                Spacer()
                
                NavigationLink(destination: {
                    FitnessGoalView()
                }, label: {
                    Text("Continue")
                        .foregroundColor(Color.white)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 45)
                })
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.buttonorange))
                .padding(.top, 57)
            }
        }
    }
    
    var daySelecter: some View {
        ZStack {
            Color.buttonorange
            Text("3")
                .font(.system(size: 61))
                .foregroundColor(.white)
        }
        .clipShape(RoundedRectangle(cornerRadius: 33))
        .frame(width: 97, height: 97)
    }
}

struct WorkingOutDaysView_Previews: PreviewProvider {
    static var previews: some View {
        WorkingOutDaysView()
    }
}
