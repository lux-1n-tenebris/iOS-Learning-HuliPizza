//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Stefan Radosavljevic on 28/08/2020.
//  Copyright © 2020 Stefan Radosavljevic. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem:HistoryItem
    var body: some View {
        HStack(alignment: .top) {
            Image("\(historyItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
            Text(historyItem.name)
                .font(.title)
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.square")
                .padding()
                .font(.title)
                .foregroundColor(Color("G3"))
            ,alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
