//
//  ItemModel.swift
//  todolist-swiftui
//
//  Created by Michelli Cristina de Paulo Lima on 06/08/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
