//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 28/08/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    var body: some View {
        VStack {
            HStack(alignment:.firstTextBaseline) {
                Image(systemName: "\(orderItem.id).square")
                Text(orderItem.description)
                    .font(.headline)
                Spacer()
                Text(orderItem.formattedExtendedPrice)
                    .bold()
            }
            Text(orderItem.comments)
        }
        .animation(.none)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
