//
//  ListRowView.swift
//  todolist-swiftui
//
//  Created by Michelli Cristina de Paulo Lima on 06/08/23.
//

import SwiftUI

struct ListRowView: View {

    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {

    static var item1 = ItemModel(title: "First Item", isCompleted: false)

    static var previews: some View {
        Group {
            ListRowView(item: item1)
        }
        .previewLayout(.sizeThatFits)
    }
}
