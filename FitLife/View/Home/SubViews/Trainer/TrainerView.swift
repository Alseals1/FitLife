import SwiftUI

struct TrainerView: View {
    @StateObject var vm = TrainerViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Popular Trainer")
                        .font(.system(size: 20, weight: .bold))
                    
                    Spacer()
                }
                popularTrainer
                
                HStack {
                    Text("More Trainer")
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                }
                .padding(.top, 30)
                
                VStack {
                    ScrollView(showsIndicators: false) {
                            moreTrainer
                    }
                }
                
            }.padding(25)
        }
    }
    private var popularTrainer: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(vm.trainer) { profile in
                    VStack(spacing: 12){
                        AsyncImage(url: URL(string: profile.image)) { image in
                           image
                               .resizable()
                               .scaledToFill()
                               .frame(width: 75, height: 75)
                               .clipShape(Circle())
                               
                       } placeholder: {
                           ProgressView()
                       }
                        VStack {
                            HStack(spacing: 0) {
                                Text(profile.firstName)
                                    .font(.custom(FontManager.Inter.bold, size: 7))
                                Text(profile.lastName)
                                    .font(.system(size: 14, weight: .ultraLight))
                            }
                            
                            HStack(spacing: 0) {
                                Text("\(profile.ranking)")
                                Text("Trainer")
                            }
                            .font(.system(size: 10, weight: .light))
                            .foregroundColor(Color.gray)
                        }
                    }
                }
            }
        }
    }

    var moreTrainer: some View {
        ForEach(vm.trainer) { profile in
            HStack {
                ZStack {
                    Color.lighterGrayColor
                    
                    HStack {
                        AsyncImage(url: URL(string: profile.image)) { image in
                           image
                               .resizable()
                               .scaledToFill()
                               .frame(width: 50, height: 50)
                               .clipShape(Circle())
                               
                       } placeholder: {
                           ProgressView()
                       }
                        VStack(alignment: .leading, spacing: 0){
                            HStack(spacing: 0) {
                                Text(profile.firstName)
                                    .font(.custom(FontManager.Inter.bold, size: 14))
                                Text(profile.lastName)
                                    .font(.system(size: 25, weight: .ultraLight))
                            }
                               
                            HStack(spacing: 0) {
                                Text(profile.ranking)
                                Text("Trainer")
                                   
                            }
                            .font(.system(size: 12, weight: .regular))
                                .foregroundColor(Color.gray)
                        }
                        Spacer()
                        
                        HStack {
                            ZStack {
                                Color.reviewBackgroundColor.opacity(0.5)
                                HStack(spacing: 3) {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .foregroundColor(Color.reviewBackgroundColor)
                                    .frame(width: 13, height: 13)
                                    
                                    Text(profile.rating)
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
}

struct TrainerView_Previews: PreviewProvider {
    static var previews: some View {
        TrainerView()
    }
}
