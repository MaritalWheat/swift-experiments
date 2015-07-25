//
//  ViewController.swift
//  FunFacts
//
//  Created by Emanuel Rosu on 7/25/15.
//  Copyright (c) 2015 Emanuel Rosu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = Factbook()
    let colorWheel = ColorWheel()
    var prevColor = UIColor.whiteColor()
    var prevFact = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factBook.factsArray[0]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        var randomColor = colorWheel.randomColor()
        while(randomColor == prevColor) {
            randomColor = colorWheel.randomColor()
        }
        
        var randomFact = factBook.randomFact()
        while(randomFact == prevFact) {
            randomFact = factBook.randomFact()
        }
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = randomFact
        
        prevColor = randomColor
        prevFact = randomFact
    }

}

