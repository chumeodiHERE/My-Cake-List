//
//  BakeryCardInfo.swift
//  MyCakeList
//
//  Created by Gia Huy on 12/08/2022.
//

import SwiftUI
import CoreLocation

struct BakeryCardInfo: View {
    var bakeryInfo: BakeryInfo
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: bakeryInfo.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 330)
                CircleImage(image: bakeryInfo.image)
                    .offset(y: -130)
                    .padding(.bottom, -90)
                InfoView(name: bakeryInfo.name, address: bakeryInfo.address, price: bakeryInfo.price, description: bakeryInfo.description)
            }
        }
    }
}

struct BakeryCardInfo_Previews: PreviewProvider {
    static var previews: some View {
        BakeryCardInfo(bakeryInfo: bakeries[0])
    }
}
