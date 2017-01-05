//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    let compare = lhs.rarity.rawValue - rhs.rarity.rawValue
    switch compare {
    case -5...(-1):
        return true
    case 0:
        if lhs.baseValue < rhs.baseValue
        {
            return true
        }else
        {
            return false
        }
    case 1...5:
        return false
        
    default:
        return true
    }
    return true
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
