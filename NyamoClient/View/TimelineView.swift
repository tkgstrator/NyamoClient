//
//  TimelineView.swift
//  NyamoClient
// 
//  Created by devonly on 2022/04/22.
//  Copyright © 2022 Magi Corporation. All rights reserved.
//

import SwiftUI
import OAuthTwi

struct TimelineView: View {
    @SceneStorage("APP_USER_TIMELINE") private var timeline: [Response.Status] = []
    
    var body: some View {
        List(content: {
            ForEach(timeline) { tweet in
                TweetView(tweet: tweet)
            }
        })
        .listStyle(.plain)
    }
}

struct TimelineView_Previews: PreviewProvider {
    static let tweet: Response.Status = Response.Status()
    
    static var previews: some View {
        List(content: {
            ForEach(Range(0...10)) { _ in
                TweetView(tweet: tweet)
            }
        })
            .preferredColorScheme(.dark)
    }
}
