//
//  NewTaskView.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-23.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskGroup: TaskGroup
    
    @State var text = ""
    
    var body: some View {
        Form {
            TextField("Task Name", text: $text)
            
            Button("Add") {
                self.taskGroup.tasks.append(Task(name: self.text))
            }.disabled(text.isEmpty)
        }
        
        
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView( taskGroup: TaskGroup() )
    }
}
