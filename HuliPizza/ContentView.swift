//
//  ContentView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 27/08/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel:OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action: {self.isMenuDisplayed.toggle()}){
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            .padding(.bottom)
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            .animation(.spring())
//            Spacer()
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
            ContentView(orderModel: OrderModel())
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
