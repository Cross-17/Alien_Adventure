//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var item:UDItem?
        item = inventory.first
        for thing in inventory
        {
            if let name = thing.historicalData["PlanetOfOrigin"] as? String{
                if name == planet
                {
             if let tempVal = thing.historicalData["CarbonAge"] as? Int{
                if let temVal2 = item!.historicalData["CarbonAge"] as? Int {
                    if tempVal >= temVal2
                    {
                        item = thing
                    }
                }
            }
            }
        }
}
        return item
}
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
