//
//  BakeriesList.swift
//  MyCakeList
//
//  Created by Gia Huy on 12/08/2022.
//

import SwiftUI

struct BakeriesList: View {
    var body: some View {
        NavigationView {
            List(bakeries){
                bakery in
                NavigationLink{
                    BakeryCardInfo(bakeryInfo: bakery)
                } label: {
                    BakeryRow(bakery: bakery)
                }
                .navigationTitle("My 🍰 List")
            }
        }
    }
}

struct BakeriesList_Previews: PreviewProvider {
    static var previews: some View {
        BakeriesList()
    }
}
