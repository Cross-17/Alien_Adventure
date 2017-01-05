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
        var mys1 = ""
        var mys2 = ""
        for char in shuffle.characters
        {
            for c in s1.characters
            {
                if(c == char)
                {
                    mys1.append(char)
                    break
                }
            }
            for c in s2.characters
            {
                if(c == char)
                {
                    mys2.append(char)
                    break
                }
            }
        }
        return mys1 == s1 && mys2 == s2
        
    }
    
}



