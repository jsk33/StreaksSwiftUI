//
//  TaskGroup.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-23.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import Foundation

class TaskGroup: ObservableObject {
    @Published var tasks = [
        Task(name: "Work on apps"),
        Task(name: "Go to the gym"),
        Task(name: "Interview prep")
    ]
}
