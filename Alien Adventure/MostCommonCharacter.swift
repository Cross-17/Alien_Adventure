//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        var chars = [Character: Int]()
        for thing in inventory
        {
            for char in thing.name.lowercased().characters
            {
                if let num = chars[char] {
                    chars[char] = num + 1
                }else
                {
                    chars[char] = 0
                }
            }
        }
        var num = 0
        var result:Character?
        for(key,val) in chars
        {
            if val > num
            {
                num = val
                result = key
            }
        }
        return result
    }
}
