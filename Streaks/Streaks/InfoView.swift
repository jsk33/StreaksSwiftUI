//
//  InfoView.swift
//  Streaks
//
//  Created by Jason Kim on 2020-01-05.
//  Copyright © 2020 Jason Kim. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            Text("Streaks")
            Text("""
                    This app is designed to help you stick to a consistent routine.
                    It is based on the belief that there are no shortcuts; incremental improvement is the way to self-development.

                    Take advantage of the 'streak mentality'.
                    Game-ify the mundane.
                    Set rewards for reaching milestones.
                    Watch yourself transform into your ideal self.
                """)
        }.navigationBarTitle("Info")
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
