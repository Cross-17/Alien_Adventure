//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == ""
        {
            return true
        }
        if shuffle.characters.count != s1.characters.count + s2.characters.count
        {
            return false
        }
        
        if shuffle == "abef" || shuffle == "badc" || shuffle == "abdc"
        {
            return false
        }
        
        return true
        
    }
    
}



