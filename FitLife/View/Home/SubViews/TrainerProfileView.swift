import SwiftUI

struct TrainerProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("trainerProfileImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 441, height: 447)
                    
                    VStack(spacing: 0) {
                        trainerInformationView
                            .padding(.horizontal,25)
                    }
                    .offset(y: 100)
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
        .padding(.top, -10)
    }
    
    @ViewBuilder
    var trainerInformationView: some View {
        VStack {
            Spacer()
            VStack( spacing: 20){
                HStack(alignment: .center) {
                    Spacer()
                    ZStack{
                        Color.buttonorange
                        Text("Certified")
                            .foregroundColor(.white)
                            .font(.system(size: 11, weight: .bold))
                    }.clipShape(RoundedRectangle(cornerRadius: 13))
                        .frame(width: 81, height: 26)
                    Spacer()
                }
                .padding()
                
                VStack{
                    Text("Alex Costa")
                        .font(.system(size: 32, weight: .bold))
                    HStack(spacing: 24) {
                        HStack(spacing: 5) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 14, height: 14)
                            Text("4.8")
                        }
                        Text("|")
                        HStack(spacing: 5) {
                            Text("1200 Reviews")
                        }
                    }
                    HStack{
                        ProfileActionButton(action: {}, text: "Call", image: "phone")
                        ProfileActionButton(action: {}, text: "Chat", image: "bubble.left")
                        ProfileActionButton(action: {}, text: "Follow", image: "heart")
                    }.padding(.bottom, 20)
                    
                    //Workout List
                    
                }
                .padding(.bottom)
            }
            .frame(minWidth: UIScreen.main.bounds.width ,maxWidth: .infinity, alignment: .leading)
            .foregroundColor(Color.black)
            .background(.white)
            .cornerRadius(37, corners: [.topLeft, .topRight])
        }.ignoresSafeArea()
    }
}

struct TrainerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerProfileView()
    }
}
