import SwiftUI

struct TrainerProfileView: View {
    @State var showView: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .bottom) {
                    Image("trainerProfileImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 441, height: 460)
                }
                .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    trainerInformationView
                        .padding(.horizontal,25)
                }
                .offset(y: -50)
            }
        }
        .padding(.top, -15)
    }
    
    var trainerInformationView: some View {
        ZStack(alignment: .top) {
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
                        ContactActionButtons()
                        
                        ForEach(1...6, id: \.self) { _ in
                            NavigationLink {
                                TrainerSessionView()
                            } label: {
                                trainerWorkoutList
                            }
                        }
                    }
                    .padding(.bottom)
                }
            }
            .ignoresSafeArea()
        }
        .frame(minWidth: UIScreen.main.bounds.width ,maxWidth: .infinity, alignment: .leading)
        .foregroundColor(Color.black)
        .background(.white)
        .cornerRadius(37, corners: [.topLeft, .topRight])
    }
    
    var trainerWorkoutList: some View {
        HStack {
            ZStack {
                Color.lighterGrayColor
                
                HStack {
                    Image("trainerImage")
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("The Batman")
                            .font(.custom(FontManager.Inter.bold, size: 14))
                        
                        Text("Pro Trainer")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    
                    Circle()
                        .stroke(lineWidth: 9)
                        .fill(Color.buttonorange)
                        .frame(width: 35)
                }
                .padding(.leading, 12)
                .padding(.trailing, 20)
            }
        }
        .frame(width: 335, height: 81)
        .cornerRadius(15)
    }
}

struct TrainerProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerProfileView()
    }
}

struct ContactActionButtons: View {
    var body: some View {
        HStack{
            NavigationLink {
                MessageView()
            } label: {
                ProfileActionButton(text: "Call", image: "phone")
            }
            
            NavigationLink {
                MessageView()
            } label: {
                ProfileActionButton(text: "Chat", image: "bubble.left")
            }
            
            ProfileActionButton(text: "Follow", image: "heart")
        }.padding(.bottom, 20)
    }
}
