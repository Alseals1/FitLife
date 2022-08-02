import SwiftUI

struct MoreTrainer: View {
    var body: some View {
        HStack {
            ZStack {
                Color.lighterGrayColor
                HStack {
                    Image("trainerImage")
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4){
                        Text("The Batman")
                            .font(.system(size: 14, weight: .semibold))
                           
                        Text("Pro Trainer")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color.gray)
                    }
                    Spacer()
                    
                    HStack {
                        ZStack {
                            Color.reviewBackgroundColor.opacity(0.7)
                            HStack(spacing: 3) {
                                Image(systemName: "star.fill")
                                    .resizable()
                                .frame(width: 13, height: 13)
                                
                                Text("4.8")
                                    .font(.system(size: 14, weight: .medium))
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(width: 58, height: 26)
                   
                }
                .padding(.leading, 12)
                .padding(.trailing, 20)
            }
            
        }
        .frame(width: 335, height: 81)
        .cornerRadius(15)
    }
}

struct MoreTrainer_Previews: PreviewProvider {
    static var previews: some View {
        MoreTrainer()
    }
}
