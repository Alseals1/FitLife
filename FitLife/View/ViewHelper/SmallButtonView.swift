//
//  SmallButtonView.swift
//  FitLife
//
//  Created by Alandis Seals on 7/29/22.
//

import SwiftUI

struct SmallButtonView: View {
    let action: () -> Void
    let image: String
    var body: some View {
        Button(action: {action()}, label: {
            ZStack {
                Color.buttongrey.opacity(0.1)
                Image(systemName: image)
                    .foregroundColor(.black)
                    .frame(width: 17.2, height: 17.31)
            }
            
        })
        .clipShape(Circle())
        .frame(width: 43, height: 43)
    }
}

struct SmallButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SmallButtonView(action: {}, image: "magnifyingglass")
    }
}
