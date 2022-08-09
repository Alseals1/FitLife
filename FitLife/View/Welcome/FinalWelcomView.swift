import SwiftUI

struct FinalWelcomView: View {
    
    var body: some View {
        ZStack {
            Color.buttonorange
                .ignoresSafeArea()
            VStack {
                ZStack{
                    Ellipse()
                        .fill(Color.white)
                        .frame(width: 123, height: 123)
                    
                    Image("yogalady")
                        .resizable()
                        .frame(width: 145, height: 145)
                        .scaledToFit()
                        .offset(y: -9)
                }
                Spacer()
                VStack(alignment: .center) {
                    Text("You are ready to start workout \nnow")
                        .font(.system(size: 33, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 61)
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        HomeView()
                    }, label: {
                        Text("Let's Go")
                            .foregroundColor(Color.orange)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 45)
                    }).background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .padding(.top, 57)
                }
            }
            .padding(.top, 78)
        }
    }
}

struct FinalWelcomView_Previews: PreviewProvider {
    static var previews: some View {
        FinalWelcomView()
    }
}
