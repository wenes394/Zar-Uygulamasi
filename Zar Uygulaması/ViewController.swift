//
//  ViewController.swift
//  Zar Uygulaması
//
//  Created by GBGYP-5 on 3.05.2018.
//  Copyright © 2018 mustafaozkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!

    
    let diceSurfice = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.becomeFirstResponder()
        
    }
    
    // SHAKE MOTION
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rollTapped()
        }
    }
    

    @IBAction func rollTapped() {
        
        let diceFirst = Int(arc4random_uniform(5) + 1)
        let diceSecond = Int(arc4random_uniform(5) + 1)
        
        firstDiceImageView.image = diceSurfice[diceFirst]
        secondDiceImageView.image = diceSurfice[diceSecond]
    }
    
    


}

