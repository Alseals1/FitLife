import SwiftUI

struct TrainerSessionView: View {
    
    var body: some View {
        ZStack {
                    Image("yogaTrainer")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .scaledToFit()
                        .ignoresSafeArea()
            
                VStack{
                    Spacer()
                    
                    HStack {
                        ZStack{
                            Color.buttonorange
                            Text("Certified")
                                .foregroundColor(.white)
                                .font(.system(size: 11, weight: .bold))
                        }.clipShape(RoundedRectangle(cornerRadius: 13))
                            .frame(width: 81, height: 26)
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            ZStack {
                                Circle()
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 48, height: 48)
                                
                                Image(systemName: "pencil")
                                    .font(.system(size: 24))
                                    .foregroundColor(Color.black)
                            }
                        })
                        .frame(width: 48, height: 48)
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Yoga Training Sets")
                            .font(.custom(FontManager.Satoshi.bold, size: 32))
                            .foregroundColor(.white)
                        
                        Text("I’ll help you to increase your Yoga healthness \nwith my 12 exclusive trainings. ")
                            .font(.custom(FontManager.Inter.regular, size: 12))
                            .foregroundColor(.white)
                            .lineSpacing(5)
                    }
                    .padding(.trailing, 50)
                    
                    SoundView()
                        .padding(.top)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 60)
            }
        }
    }

struct TrainerSessionView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerSessionView()
    }
}
