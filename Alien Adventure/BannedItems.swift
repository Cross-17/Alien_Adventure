//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        var result =  [Int]()
        let dataArray = NSArray(contentsOf: dataFileURL) as! [[String:Any]]
        for thing in dataArray
        {
          if let name = thing["Name"] as? String {
             if let hist = thing["HistoricalData"] as? [String: AnyObject]{
                if let age = hist["CarbonAge"] as? Int {
                    if let id = thing["ItemID"] as? Int {
                        if name.contains("Laser") && age<30
                        {
                            result.append(id)
                        }
                    }
                }
                    
                }
            }
            
        }
        return result
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
