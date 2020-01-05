//
//  ContentView.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-04.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
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
                HStack {
                    Text("Work on Streaks")
                    
                }
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
