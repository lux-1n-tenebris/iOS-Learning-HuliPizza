//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 28/08/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orderModel:OrderModel
    var body: some View {
        VStack {
            List{
                Section(
                    header:ListHeaderView(orderModel:self.orderModel, text: "Your order")
                ){
                    ForEach(orderModel.orders) {item in
                        OrderRowView(orderItem:item)
                    }
                    .onDelete(perform: delete)
                }
            }
        }
    }
    func delete(at offsets:IndexSet){
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel:OrderModel())
    }
}

