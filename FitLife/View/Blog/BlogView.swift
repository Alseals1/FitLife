import SwiftUI

struct BlogView: View {
    @State var searchText: String = ""
    var body: some View {
        VStack {
            SearchBar(searchText: $searchText, text: "Search for a topic")
            
            ScrollView {
                VStack {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Choice for you")
                            .font(.custom(FontManager.Satoshi.bold, size: 16))
                        Image("blogImage")
                            .resizable()
                            .frame(width: 327, height: 188)
                        Text("How Exercise Can Boost Mental Health in \nYoung Adults")
                            .font(.custom(FontManager.Satoshi.light, size: 16))
                        HStack{
                            Text("November 14, 2021")
                            Text("·")
                            Text("3 min read")
                        }
                        .font(.custom(FontManager.Satoshi.regular, size: 12))
                            
                       
                    }
                    moreArticle
                        .padding(.top, 16)
                        
                }
                .padding(.top, 24)
                .padding(.bottom)
            }
            
        }
        .navigationTitle("Blog")
        
        .padding(.horizontal, 25)
    }
    
    @ViewBuilder
    var moreArticle: some View {
        VStack(spacing: 12){
            HStack {
                Text("More Article")
                    .font(.custom(FontManager.Satoshi.bold, size: 16))
                Spacer()
                Button(action: {}, label: {
                    Text("Show More")
                        .font(.custom(FontManager.Satoshi.light, size: 16))
                        .foregroundColor(Color.buttonorange)
                })
            }
            
            VStack {
                HStack{
                    Image("femaleTrainer")
                        .resizable()
                        .frame(width: 100, height: 72)
                        .cornerRadius(10, corners: .allCorners)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("The Power of Dirt: The Benefits of Outdoor Workouts ")
                        HStack{
                            Text("November 12, 2021")
                            Text("·")
                            Text("5 min read")
                        }
                        .font(.custom(FontManager.Satoshi.light, size: 12))
                    }
                    
                }
                HStack{
                    Image("femaleTrainer")
                        .resizable()
                        .frame(width: 100, height: 72)
                        .cornerRadius(10, corners: .allCorners)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("The Power of Dirt: The Benefits of Outdoor Workouts ")
                        HStack{
                            Text("November 12, 2021")
                            Text("·")
                            Text("5 min read")
                        }
                        .font(.custom(FontManager.Satoshi.light, size: 12))
                        .foregroundColor(.black.opacity(0.8))
                    }
                    
                }
                HStack{
                    Image("femaleTrainer")
                        .resizable()
                        .frame(width: 100, height: 72)
                        .cornerRadius(10, corners: .allCorners)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("The Power of Dirt: The Benefits of Outdoor Workouts ")
                        HStack{
                            Text("November 12, 2021")
                            Text("·")
                            Text("5 min read")
                        }
                        .font(.custom(FontManager.Satoshi.light, size: 12))
                        .foregroundColor(.black.opacity(0.5))
                    }
                }
                HStack{
                    Image("femaleTrainer")
                        .resizable()
                        .frame(width: 100, height: 72)
                        .cornerRadius(10, corners: .allCorners)
                    VStack(alignment: .leading, spacing: 10) {
                        Text("The Power of Dirt: The Benefits of Outdoor Workouts ")
                        HStack{
                            Text("November 12, 2021")
                            Text("·")
                            Text("5 min read")
                        }
                        .font(.custom(FontManager.Satoshi.light, size: 12))
                    }
                    
                }
            }
            
        }
        .padding(.horizontal, 25)
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView()
    }
}
