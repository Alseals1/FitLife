import SwiftUI

struct ReviewView: View {
    
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(Color.reviewBackgroundColor)
                    .frame(width: 12, height: 12)
                Text("4.8")
                    .font(.system(size: 12, weight: .medium))
            }
            .padding(.horizontal, 9)
            .padding(.vertical, 9)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .background(.quaternary, in: RoundedRectangle(cornerRadius: 8))
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
