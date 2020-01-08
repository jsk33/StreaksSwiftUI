//
//  InfoView.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-05.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let pastelOrange = Color.init(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)

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
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Streaks").padding(.bottom).modifier(TitleStyle())
            Text("This app is designed to help you stick to a consistent routine. It is based on the belief that there are no shortcuts; incremental improvement is the way to self-development. Take advantage of the streak mentality. Game-ify the mundane. Set rewards for reaching milestones.")
            
            Spacer()
        }.navigationBarTitle("Info")
            .background(Image("Background").resizable().scaledToFill())
            .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
