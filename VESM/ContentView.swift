//
//  ContentView.swift
//  VESM
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI
struct ContentView: View {
  @State var toDoItems: [toDoItem] = []
  @State private var showNewTask = false
  var body: some View {
    VStack{
      HStack{
        Text("Watch List")
              .font(.system(size: 40))
        Spacer()
        Button(action:{
          self.showNewTask = true
        }) {
          Text("+")
        }
      }
      .padding()
    }
    List{
      ForEach (toDoItems) { toDoItem in
        Text(toDoItem.title)
        if toDoItem.isImportant == true {
          Text(":bangbang:" + toDoItem.title)
        } else {
          Text(toDoItem.title)
        }
        }
      }
    if showNewTask {
      newToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
    }
        }
  }
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }

