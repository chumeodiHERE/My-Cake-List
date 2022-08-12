//
//  BakeryRow.swift
//  MyCakeList
//
//  Created by Gia Huy on 12/08/2022.
//

import SwiftUI

struct BakeryRow: View {
    var bakery: BakeryInfo
    
    var body: some View {
        HStack {
            bakery.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(bakery.name)
        }
    }
}

struct BakeryRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BakeryRow(bakery: bakeries[0])
                .previewLayout(.fixed(width: 300, height: 70))
            BakeryRow(bakery: bakeries[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
