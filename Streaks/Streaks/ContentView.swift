//
//  ContentView.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-04.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var itemOneNum = 0
    @State var itemTwoNum = 0
    @State var itemThreeNum = 0

    var body: some View {
        VStack {
            Text("Streaks")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.top, 50.0)
            Text("One step at a time")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.bottom, 50.0)
            
            Spacer()
            
            VStack {
                HStack() {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Streaks for an hour")
                    }
                    Text("\(itemOneNum)")
                }
                .padding(.bottom)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("LeetCode for an hour")
                    }
                    Text("\(itemTwoNum)")
                }
                .padding(.bottom)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Gym")
                    }
                    Text("\(itemThreeNum)")
                }
                .padding(.bottom)
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
