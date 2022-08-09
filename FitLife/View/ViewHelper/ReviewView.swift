import SwiftUI

struct ReviewView: View {
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 12, height: 12)
                Text("4.8")
                    .font(.system(size: 12, weight: .medium))
            }
            .padding()
        }
        .background(.thickMaterial.opacity(0.5), in: RoundedRectangle(cornerRadius: 8))
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
