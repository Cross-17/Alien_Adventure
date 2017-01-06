//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        var result : [UDPolicingError:Int] = [.nameContainsLaser:0, .itemFromCunia:0, .valueLessThan10:0,]
        for thing in inventory{
            do {
                try policingFilter(thing)
            }catch UDPolicingError.nameContainsLaser{
                result[.nameContainsLaser]! += 1
            }catch UDPolicingError.valueLessThan10{
                result[.valueLessThan10]! += 1
            }catch UDPolicingError.itemFromCunia{
                result[.itemFromCunia]! += 1
            }catch {
                print("unknown error")
            }
        }
        return result
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
