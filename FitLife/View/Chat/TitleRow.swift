import SwiftUI

struct TitleRow: View {
    let urlImage = URL(string: "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60")
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
                    .foregroundColor(.gray)
            }
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
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
