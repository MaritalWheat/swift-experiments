//
//  FactBook.swift
//  FunFacts
//
//  Created by Emanuel Rosu on 7/25/15.
//  Copyright (c) 2015 Emanuel Rosu. All rights reserved.
//

import Foundation

struct Factbook {
    let factsArray = ["test1","test2", "test3", "test4"]
    
    func randomFact() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))
        return factsArray[randomNumber]
    }
}