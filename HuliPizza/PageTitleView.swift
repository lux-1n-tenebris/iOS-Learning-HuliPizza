//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 28/08/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrders: Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text("Order Pizza")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
           
        }.overlay(
            Image(systemName: "chevron.down.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5))
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .padding()
                ,alignment: .leading
            
        )
            .foregroundColor(Color("G1"))
            .background(Color("G4"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza", isDisplayingOrders: true)
    }
}
