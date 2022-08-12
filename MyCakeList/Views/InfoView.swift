//
//  InfoView.swift
//  MyCakeList
//
//  Created by Gia Huy on 12/08/2022.
//

import SwiftUI

struct InfoView: View {
    
    let name: String
    let address: String
    let price: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.system(size: 25))
                .bold()
                .foregroundColor(.black)
                .padding(.leading)
                .padding(.bottom, 5)
            HStack {
                Text(address)
                    .foregroundColor(.gray)
                    .padding(.leading)
                Spacer()
                Text("Price: \(price)")
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
            Divider()
            Text(description)
                .padding(.leading)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(name: "This is name of Bakery", address: "This is address", price: "$$$", description: "This is description")
    }
}
