//
//  newToDo.swift
//  VESM
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI
struct newToDoView: View {
  @State var title: String
  @State var isImportant: Bool
  @Binding var toDoItems: [toDoItem]
  @Binding var showNewTask : Bool
  var body: some View {
    VStack {
      Text("Title:")
      TextField("Enter here...", text: $title)
      Toggle(isOn: $isImportant) {
        Text("Is it important?")
      }
      Button(action: {
        self.addTask(title:self.title,isImportant:self.isImportant)
        self.showNewTask = false
      }) {
        Text("Add")
      }
    }
  }
  private func addTask(title: String, isImportant: Bool = false) {
    let task = toDoItem(title: title, isImportant: isImportant)
    toDoItems.append(task)
  }
}
struct newToDoView_Previews: PreviewProvider {
  static var previews: some View {
    newToDoView(title:"", isImportant: false, toDoItems:
        .constant([]), showNewTask: .constant(true))
  }
}
