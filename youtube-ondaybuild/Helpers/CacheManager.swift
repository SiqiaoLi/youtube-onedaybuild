//
//  CacheManager.swift
//  youtube-ondaybuild
//
//  Created by Siqiao Li on 1/7/20.
//  Copyright © 2020 Siqiao Li. All rights reserved.
//

import Foundation


class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        
        return cache[url]
        
    }
}
