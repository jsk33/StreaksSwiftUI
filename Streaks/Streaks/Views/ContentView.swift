//
//  ContentView.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-04.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    

    let midnightBlue = Color.init(red: 0.0/255.0, green: 51.0/255.0, blue: 102.0/255.0)

    struct TitleStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 40))
                .modifier(ShadowStyle())
        }
    }
    
    struct ShadowStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .shadow(color: Color.black, radius: 5, x: 2, y: 2)
        }
    }
    
    struct TaskStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.blue)
                .font(Font.custom("Arial Rounded MT Bold", size: 18))
        }
    }
    
    struct TaskStreakCountStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 20))
                .modifier(ShadowStyle())
        }
    }
    
    
    @ObservedObject var taskGroup: TaskGroup
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
           // Target Items
            List {
                ForEach(taskGroup.tasks) { task in
                    HStack {
                        Text("\(task.name)").modifier(TaskStyle())
                        Text("\(task.streakCount)").modifier(TaskStreakCountStyle())
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Tasks")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button( action: {self.modalIsPresented = true} ) {
                                        Image(systemName: "plus")
            })
            
            
            NavigationLink(destination: InfoView()) {
                HStack {
                    //Image()
                    Text("Info")
                }
            }
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskGroup: self.taskGroup)
        }
        
//        VStack() {
//            Spacer()
//
//            // App Title
//            Text("Streaks")
//                .modifier(TitleStyle())
//                .padding(.top, 50.0)
//
//            Text("One step at a time")
//                .font(Font.custom("Arial Rounded MT Bold", size: 15))
//                .padding(.top)
//                .padding(.bottom, 50.0)
//
//            Spacer()
//
//
//
//            Spacer()
//
//            // Info Page
//
//
//            Spacer()
//        }.background(Image("Background").resizable().scaledToFill())
//            .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskGroup: TaskGroup())
    }
}
