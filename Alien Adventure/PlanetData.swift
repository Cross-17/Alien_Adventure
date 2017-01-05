//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileURL = Bundle.main.url(forResource:dataFile, withExtension: "json")!
        let datajson = try! Data(contentsOf: dataFileURL)
        var datadict: [[String:Any]]!
        do {
datadict = try!
    JSONSerialization.jsonObject(with: datajson,
                    options: JSONSerialization.ReadingOptions())
                as! [[String:Any]]
        }
        var maxname = ""
        var maxpoint = 0
        for thing in datadict
        {
            if let common = thing["CommonItemsDetected"] as? Int{
                if let uncommon = thing["UncommonItemsDetected"] as? Int{
                    if let rare = thing["RareItemsDetected"] as? Int {
                        if let legendary = thing["LegendaryItemsDetected"] as? Int{
                            if let name = thing["Name"] as? String{
                                let point = common + 2*uncommon + 3*rare + 4 * legendary
                                if point >= maxpoint
                                {
                                    maxname = name
                                    maxpoint = point
                                }
                            }
                        }
                    }
                }
            }
            
        }
        return maxname
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
