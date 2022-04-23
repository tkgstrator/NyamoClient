//
//  TweetView.swift
//  NyamoClient
// 
//  Created by devonly on 2022/04/22.
//  Copyright © 2022 Magi Corporation. All rights reserved.
//

import SwiftUI
import SwiftyUI
import SDWebImageSwiftUI
import OAuthTwi

struct TweetView: View {
    let tweet: Response.Status

    var body: some View {
        HStack(alignment: .top, spacing: nil, content: {
            WebImage(url: URL(string: tweet.user.profileImageUrlHttps))
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 55, height: 55, alignment: .center)
            LazyVStack(alignment: .leading, spacing: nil, content: {
                HStack(content: {
                    Text(tweet.user.name)
                        .bold()
                    Text("@"+tweet.user.screenName)
                        .foregroundColor(.secondary)
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: .Line3Horizontal)
                            .foregroundColor(.secondary)
                    })
                })
                Text(tweet.text)
                LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 4), content: {
                    Button(action: {}, label: {
                        HStack(content: {
                            Image(systemName: .Message)
                                .foregroundColor(.secondary)
                        })
                    })
                    Button(action: {}, label: {
                        HStack(content: {
                            Image(systemName: .Arrow2Squarepath)
                                .foregroundColor(.secondary)
                        })
                    })
                    Button(action: {}, label: {
                        HStack(content: {
                            Image(systemName: .Heart)
                                .foregroundColor(.secondary)
                        })
                    })
                    Button(action: {}, label: {
                        HStack(content: {
                            Image(systemName: .SquareAndArrowUp)
                                .foregroundColor(.secondary)
                        })
                    })
                })
            })
        })
    }
}

extension Response.Status {
    init() {
        self.init(
            createdAt: "2020-01-01 00:00:00",
            id: 0,
            idStr: "0",
            text: "It's the only NEET thing to do.",
            entities: Response.Entity(),
            user: Response.User(),
            isQuoteStatus: true,
            retweetCount: 10,
            favoriteCount: 10,
            favorited: true,
            retweeted: true
        )
    }
}

extension Response.Entity {
    init() {
        self.init(media: nil)
    }
}

extension Response.User {
    init() {
        self.init(
            id: 0,
            idStr: "0",
            name: "Terra",
            screenName: "Herlingum",
            location: "England",
            protected: false,
            followersCount: 14,
            friendsCount: 10,
            listedCount: 0,
            favouritesCount: 0,
            verified: true,
            statusesCount: 1000,
            profileBackgroundImageUrlHttps: "https://pbs.twimg.com/profile_banners/1330655560505708549/1650007234/1500x500",
            profileImageUrlHttps: "https://pbs.twimg.com/profile_images/1516597727073030146/HAXecxUf_400x400.jpg",
            following: true,
            followRequestSent: false
        )
    }
}

struct TweetView_Previews: PreviewProvider {
    static let tweet: Response.Status = Response.Status()

    static var previews: some View {
        List(content: {
            ForEach(Range(0...10)) { _ in
                TweetView(tweet: tweet)
            }
        })
        .listStyle(.plain)
        .preferredColorScheme(.dark)
    }
}
