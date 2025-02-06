//
//  ActionItemModel.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 2/5/25.
//

import Foundation
import SwiftData

@Model
class ActionItem {
    var taskName: String = ""
    var taskRemark: String?
    var isCompleted: Bool = false
    var taskDate: Date?
    var taskTime: Date?
    
    var item: Item?
    
    init(taskName: String, taskRemark: String? = nil, isCompleted: Bool = false, taskDate: Date? = nil, taskTime: Date? = nil, list: Item? = nil) {
        self.taskName = taskName
        self.taskRemark = taskRemark
        self.isCompleted = isCompleted
        self.taskDate = taskDate
        self.taskTime = taskTime
        self.item = item
    }
    
}
