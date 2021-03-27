//
//  ContentHeaderView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 28/08/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("Surf Board")
                    .resizable()
//                    .scaledToFit()
                        .frame(minWidth: 300, idealWidth: 500, maxWidth: 600, minHeight: 75, idealHeight: 123, maxHeight: 130, alignment: .center)
                Text("Huli Pizza Company")
                    .offset(x: -20, y: 30)
                    .font(Font.custom("Avinir-black", size: 20))
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}


