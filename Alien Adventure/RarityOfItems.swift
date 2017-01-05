//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var result: [UDItemRarity: Int] = [
            UDItemRarity.common: 0,
            UDItemRarity.uncommon: 0,
            UDItemRarity.rare: 0,
            UDItemRarity.legendary: 0
        ]
        for thing in inventory
        {
            if let val = result[thing.rarity]
            {
            result[thing.rarity] = val +  1
            }
        }
        return result
        }
    }


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
