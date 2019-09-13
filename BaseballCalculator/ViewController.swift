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
    
    var hits: Double {
        return Double(hitsInput.text ?? "0") ?? 0.0
    }
    
    var atBats: Double {
        return Double(atBatsInput.text ?? "0") ?? 0.0
    }
    
    var doubles: Double {
        return Double(doublesInput.text ?? "0") ?? 0.0
    }
    
    var triples: Double {
        return Double(triplesInput.text ?? "0") ?? 0.0
    }
    
    var hrs: Double {
        return Double(homerunsInput.text ?? "0") ?? 0.0
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        let userStats = OffensiveStat(hits: hits, atBats: atBats, doubles: doubles, triples: triples, hrs: hrs)
//        return sluggingPercentage
        let slugging = userStats.calculateSlugging()
        let sluggingString = String(format: "%.3f", slugging)
        statResult.text = sluggingString
        statResult.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
//        Dismiss keyboard
        homerunsInput.resignFirstResponder()
    }
    
    @IBOutlet weak var statResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: UIViewController.dismissKeyboard())
//        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
}

