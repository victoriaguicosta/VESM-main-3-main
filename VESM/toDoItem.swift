//
//  toDoItem.swift
//  VESM
//
//  Created by scholar on 03/08/2023.
//

import Foundation
class toDoItem: Identifiable {
  var title = ""
  var isImportant = false
  var id = UUID()
  init(title : String, isImportant : Bool = false)
  {self.title = title
    self.isImportant = isImportant
  }
}









