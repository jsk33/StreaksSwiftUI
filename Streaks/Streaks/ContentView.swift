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
    
    struct ItemStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.blue)
                .font(Font.custom("Arial Rounded MT Bold", size: 18))
        }
    }
    
    struct ItemNumStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 20))
                .modifier(ShadowStyle())
        }
    }
    
    
    
    var body: some View {
        VStack() {
            Spacer()
            
            // App Title
            Text("Streaks")
                .modifier(TitleStyle())
                .padding(.top, 50.0)
            
            Text("One step at a time")
                .font(Font.custom("Arial Rounded MT Bold", size: 15))
                .padding(.top)
                .padding(.bottom, 50.0)
            
            Spacer()
            
            // Target Items
            VStack {
                HStack() {
                    Button(action: {
                        self.itemOneNum += 1
                    }) {
                        Text("Streaks for an hour").modifier(ItemStyle())
                    }
                    Text("\(itemOneNum)").modifier(ItemNumStyle())
                }
                .padding(.bottom)
                
                HStack {
                    Button(action: {
                        self.itemTwoNum += 1
                    }) {
                        Text("Interview prep for an hour").modifier(ItemStyle())
                    }
                    Text("\(itemTwoNum)").modifier(ItemNumStyle())
                }
                .padding(.bottom)
                
                HStack {
                    Button(action: {
                        self.itemThreeNum += 1
                    }) {
                        Text("Gym").modifier(ItemStyle())
                    }
                    Text("\(itemThreeNum)").modifier(ItemNumStyle())
                }
                .padding(.bottom)
            }
            
            Spacer()
            
            // Info Page
            NavigationLink(destination: InfoView()) {
                HStack {
                    //Image()
                    Text("Info")
                }
            }
            
            Spacer()
        }.background(Image("Background").resizable().scaledToFill())
            .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
