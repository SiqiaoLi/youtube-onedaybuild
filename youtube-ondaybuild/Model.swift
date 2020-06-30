//
//  Model.swift
//  youtube-ondaybuild
//
//  Created by Siqiao Li on 30/6/20.
//  Copyright © 2020 Siqiao Li. All rights reserved.
//

import Foundation


class Model {
    
    func getVideo() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check if there were any error
            if error != nil || data == nil {
                return
            }
            
            // Parsing the data into video objects
            
        }
        
        
        // Kick off the task
        dataTask.resume()
    }
}
