//
//  Model.swift
//  youtube-ondaybuild
//
//  Created by Siqiao Li on 30/6/20.
//  Copyright © 2020 Siqiao Li. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos:[Video])
}

class Model {
    
    var delegate:ModelDelegate?
    
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
            
            do {
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        
                        // Call the "videoFetched" method fo the delegate
                        self.delegate?.videosFetched(response.items!)
                    }
                    
                    
                }
                
                
                //dump(response)
            }
            catch {
                
            }
            
            
            
        }
        
        
        // Kick off the task
        dataTask.resume()
    }
}
