//
//  ListViewModel.swift
//  todolist-swiftui
//
//  Created by Michelli Cristina de Paulo Lima on 06/08/23.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = []

    init() {
        getItems()
    }

    func getItems() {
        let newItems =  [
            ItemModel(title: "This is the first title", isCompleted: false),
            ItemModel(title: "This is the second title", isCompleted: true),
            ItemModel(title: "This is the third title", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

}
