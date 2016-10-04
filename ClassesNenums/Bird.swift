//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 0
    case medium
    case fast
   
    
    func isFaster(thanSpeed: Speed) -> Bool {
        return self.rawValue >= thanSpeed.rawValue ? true : false
    }
    
}

enum Diet {
    case meatEater
    case vegetarian
    
}

enum Sex {
    case male
    case female
}

class Trex {
    var speed = Speed.fast
    var diet = Diet.meatEater
    let name: String
    let sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String{
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool{
        return speed.rawValue >= thanTrex.speed.rawValue ? true : false
    }
    
    func eat(otherTrex: Trex) {
        isFaster(thanTrex: otherTrex) ? (otherTrex.isAlive = false) : (self.isAlive = false)
    }
    
}





