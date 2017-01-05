//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        var value:Int? = nil
        var result:UDItem?  = nil
        if let val = inventory.first
        {
            result = val
            value = val.baseValue
        }
        for thing in inventory
        {
            if thing.baseValue < value!
            {
                value = thing.baseValue
                result = thing
            }
        }
        return result
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
