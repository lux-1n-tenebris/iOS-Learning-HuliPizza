//
//  RootTabView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 09/09/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
             HistoryView()
                .tabItem{
                    Image(systemName: "book")
                    Text("History")
                }
        }
            .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView().environmentObject(UserPreferences())
    }
}
