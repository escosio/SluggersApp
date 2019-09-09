//
//  SluggingPercentage.swift
//  BaseballCalculator
//
//  Created by Scott D'Antuono on 9/6/19.
//  Copyright © 2019 Scott D'Antuono. All rights reserved.
//

import Foundation

class OffensiveStat {
    var hits: Double!
    var atBats: Double!
    var doubles: Double!
    var triples: Double!
    var hrs: Double!
    
    init(hits: Double!, atBats: Double!, doubles: Double!, triples: Double!, hrs: Double!) {
        self.hits = hits
        self.atBats = atBats
        self.doubles = doubles
        self.triples = triples
        self.hrs = hrs
    }
    
    func getBattingAverage() -> Double {
        return hits / atBats
    }
    func calculateSlugging() -> Double {
        let singles: Double! = hits - (doubles + triples + hrs)
        let singlesAndDoubles = singles + (2 * doubles)
        let triplesAndHomers = (3 * triples) + (4 * hrs)
        let totalSumOfHits = singlesAndDoubles + triplesAndHomers
//        let totalSumOfHits = singles + (2 * doubles) + (3 * triples) + (4 * hrs)
        let slugging: Double = totalSumOfHits / atBats
        return slugging
    }
}
