import SwiftUI

struct TitleRow: View {
    let urlImage = URL(string: "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
    let name = "Chrissy James"
    
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: urlImage) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            }placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                    .bold()
                
                Text("online")
                    .font(.caption2)
                    .foregroundColor(.green)
            }
            
            HStack {
                Image(systemName: "phone.fill")
                    .resizable()
                    .foregroundColor(Color.buttonorange)
                    .frame(width: 7, height: 7)
                    .padding(7)
                    .background(.white)
                .cornerRadius(50)
                
                Image(systemName: "video.fill")
                    .resizable()
                    .foregroundColor(Color.buttonorange)
                    .frame(width: 7, height: 7)
                    .padding(7)
                    .background(.white)
                .cornerRadius(50)
            }
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color.buttonorange)
    }
}
