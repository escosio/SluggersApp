//
//  ViewController.swift
//  BaseballCalculator
//
//  Created by Scott D'Antuono on 9/6/19.
//  Copyright © 2019 Scott D'Antuono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    Text fields & Labels
    
    @IBOutlet weak var appNameLabel: UILabel!
    
    @IBOutlet weak var atBatsInput: UITextField!
    
    @IBOutlet weak var hitsInput: UITextField!
    
    @IBOutlet weak var doublesInput: UITextField!
    
    @IBOutlet weak var triplesInput: UITextField!
    
    @IBOutlet weak var homerunsInput: UITextField!
    
    @IBAction func calculateButton(_ sender: Any) {
        let hits = Double(hitsInput.text!)
        let atBats = Double(atBatsInput.text!)
        let doubles = Double(doublesInput.text!)
        let triples = Double(triplesInput.text!)
        let hrs = Double(homerunsInput.text!)
        let userStats = OffensiveStat(hits: hits, atBats: atBats, doubles: doubles, triples: triples, hrs: hrs)
//        return sluggingPercentage
        let slugging = userStats.calculateSlugging()
        statResult.text = String(slugging)
    }
    
    @IBOutlet weak var statResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

