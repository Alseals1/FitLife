import SwiftUI
import AVKit


struct SoundView: View {
    var sm = SoundManager()
    @State var playing: Bool = false
    @State var width: CGFloat = 0
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Capsule().fill(Color.black.opacity(0.05)).frame(height: 5)
                Capsule().fill(Color.white).frame(width: 200, height: 4)
                Circle()
                    .stroke(lineWidth: 10)
                    .fill(Color.white)
                    .frame(width: 20, height: 20)
                    .offset(x: 200)
            }.padding(.bottom, 30)
            
            
            HStack {
                Button(action: {}, label: {
                    ZStack {
                        Circle()
                            .fill(.thinMaterial.opacity(0.5))
                            .frame(width: 48, height: 48)
                        Image(systemName: "backward")
                            .font(.system(size: 25))
                            .foregroundColor(Color.black)
                    }
                })
                
                Button(action: {
                    playing.toggle()
                    if playing {
                        SoundManager.instance.playSound()
                    } else {
                        sm.player?.pause()
                    }
                }, label: {
                    
                    ZStack {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                        Image(systemName: self.playing ? "pause.fill" : "play.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.buttonorange)
                    }
                            
                    
                        
                })
               
                   
                
                Button(action: {}, label: {
               
                    ZStack {
                        Circle()
                            .fill(.thinMaterial.opacity(0.5))
                            .frame(width: 48, height: 48)
                        Image(systemName: "forward")
                            .font(.system(size: 25))
                            .foregroundColor(Color.black)
                    }
                    
                })
            }
        }
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.orange
            SoundView()
        }
    }
}
