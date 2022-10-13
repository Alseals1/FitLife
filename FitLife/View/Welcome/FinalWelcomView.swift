import SwiftUI

struct FinalWelcomView: View {
    @State var showView: Bool = false
    
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
                    Text("You are ready to \nstart workout now")
                        .font(.system(size: 33, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Button(action: {
                        showView.toggle()
                    }, label: {
                        Text("Start Now")
                            .font(.custom(FontManager.Inter.bold, size: 16))
                            .foregroundColor(Color.black)
                            .padding(.vertical, 16)
                            .padding(.horizontal, 45)
                    })
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .fullScreenCover(isPresented: $showView, content: {
                        TabsView()
                                    })
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
