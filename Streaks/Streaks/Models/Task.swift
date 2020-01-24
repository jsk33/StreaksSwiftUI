//
//  Task.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-23.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()

    var name: String
    var streakCount: Int = 0
    
    // var completed = false
    
}
