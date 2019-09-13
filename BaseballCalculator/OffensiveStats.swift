//
//  SluggingPercentage.swift
//  BaseballCalculator
//
//  Created by Scott D'Antuono on 9/6/19.
//  Copyright © 2019 Scott D'Antuono. All rights reserved.
//

import Foundation

class OffensiveStat {
    let hits: Double
    let atBats: Double
    let doubles: Double
    let triples: Double
    let hrs: Double
    
    init(hits: Double, atBats: Double, doubles: Double, triples: Double, hrs: Double) {
        self.hits = hits
        self.atBats = atBats
        self.doubles = doubles
        self.triples = triples
        self.hrs = hrs
    }
    
    func getBattingAverage() -> Double {
        guard atBats > 0 else { return 0.0 }
        return hits / atBats
    }
    
    func calculateSlugging() -> Double {
        let singles: Double! = hits - (doubles + triples + hrs)
        let singlesAndDoubles = singles + (2 * doubles)
        let triplesAndHomers = (3 * triples) + (4 * hrs)
        let totalSumOfHits = singlesAndDoubles + triplesAndHomers
//        let totalSumOfHits = singles + (2 * doubles) + (3 * triples) + (4 * hrs)
        guard atBats > 0 else { return 0.0 }
        let slugging: Double = totalSumOfHits / atBats
        return slugging
    }
}
