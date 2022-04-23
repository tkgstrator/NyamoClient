//
//  ContentView.swift
//  NyamoClient
//
//  Created by devonly on 2022/04/22.
//  
//

import SwiftUI
import SwiftyUI
import Introspect

struct ContentView: View {
    @State private var selection: Int = 0

    var body: some View {
        TabView(selection: $selection, content: {
            TimelineView()
                .tabItem({
                    Image(systemName: .House)
                        .imageScale(.small)
                })
                .tag(0)
            TimelineView()
                .tabItem({
                    Image(systemName: .Bell)
                })
            TimelineView()
                .tabItem({
                    Image(systemName: .Envelope)
                })
                .tag(0)
        })
        .introspectTabBarController(customize: { tabBar in
            tabBar.tabBar.tintColor = UIColor(Color.white)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
