//
//  DaySelecter.swift
//  FitLife
//
//  Created by Alandis Seals on 7/29/22.
//

import SwiftUI

struct DaySelecter: View {
    var body: some View {
        ZStack {
            Color.buttonorange
                Text("3")
                .font(.system(size: 61))
                .foregroundColor(.white)
            
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 33))
        .frame(width: 97, height: 97)
    }
}

struct DaySelecter_Previews: PreviewProvider {
    static var previews: some View {
        DaySelecter()
    }
}
