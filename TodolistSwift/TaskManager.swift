//
//  TaskManager.swift
//  TodolistSwift
//
//  Created by Romain De Page on 20/02/2015.
//  Copyright (c) 2015 Romain De Page. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
