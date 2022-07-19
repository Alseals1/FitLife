import SwiftUI

struct Verification: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image("muscle-image")
                    .resizable()
                    .frame(width: 192,height: 192)
            }
            
                VStack(alignment: .center, spacing: 0) {
                    
                        Text("Best app for building your \nfitness from home")
                            .font(.system(size: 20, weight: .bold))
                            .multilineTextAlignment(.center)
                            .padding(.top, 56)
                            .padding(.horizontal, 18)
                    
                    VStack(spacing: 14) {
                        GlobalButton(action: {}, image: "", text: "Continue with email", textColor: Color.white, color: Color.buttonorange, value: 4, shadowColor: Color.black.opacity(0.6), shadowRadius: 4, shadowX: 0,shadowY: 4)
                           
                            
                        
                        Text("You Can Sign In with: ")
                            .font(.system(size: 12, weight: .semibold))
                        
                        GlobalButton(action: {}, image: "google-icon", text: "Gmail", textColor: Color.blue, color: Color.buttongrey.opacity(0.3), value: 4, shadowColor: Color.clear, shadowRadius: 0, shadowX: 0,shadowY: 0)
                        
                        GlobalButton(action: {}, image: "facebook-icon", text: "Facebook", textColor: Color.facebooktextcolor, color: Color.buttongrey.opacity(0.3), value: 4, shadowColor: Color.clear, shadowRadius: 0, shadowX: 0,shadowY: 0)
                          
                           
                    }
                    .padding(.horizontal, 25)
                    .padding(.top, 36)
                    .padding(.bottom, 67)
                    
                    
                     
                
            }
        }
    }
}

struct SignIn_SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
    }
}
