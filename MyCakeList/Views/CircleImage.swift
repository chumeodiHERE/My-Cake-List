//
//  CircleImage.swift
//  MyCakeList
//
//  Created by Gia Huy on 12/08/2022.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    var body: some View {
        image
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white),lineWidth: 5))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Le-Castella"))
    }
}
