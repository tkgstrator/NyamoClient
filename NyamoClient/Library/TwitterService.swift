//
//  TwitterService.swift
//  NyamoClient
// 
//  Created by devonly on 2022/04/22.
//  Copyright © 2022 Magi Corporation. All rights reserved.
//

import Foundation
import OAuthTwi

final class TwitterService: ObservableObject {
    internal let session: TWSession = TWSession.session

    init() {}
}
