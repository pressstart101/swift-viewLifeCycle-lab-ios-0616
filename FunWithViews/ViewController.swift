//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var square1View: UIView!
    @IBOutlet weak var square2View: UIView!
    @IBOutlet weak var square3View: UIView!
    @IBOutlet weak var square4View: UIView!
    @IBOutlet weak var square5View: UIView!
    @IBOutlet weak var square6View: UIView!
    @IBOutlet weak var square7View: UIView!

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
    @IBAction func diceButton(sender: AnyObject) {
        if redLabel.hidden == true{
        redLabel.hidden = false
        redLabel.text = "\(randomDiceRoll())"
        let n:Int? = Int(redLabel.text!)
        print(redLabel.text)
        dieChange (n!)
        }else if orangeLabel.hidden == true {
            orangeLabel.hidden = false
            orangeLabel.text = "\(randomDiceRoll())"
            let n:Int? = Int(orangeLabel.text!)
            print(orangeLabel.text)
            dieChange (n!)
        }else if yellowLabel.hidden == true {
            yellowLabel.hidden = false
            yellowLabel.text = "\(randomDiceRoll())"
            let n:Int? = Int(yellowLabel.text!)
            print(yellowLabel.text)
            dieChange (n!)
        }else if greenLabel.hidden == true {
            greenLabel.hidden = false
            greenLabel.text = "\(randomDiceRoll())"
            let n:Int? = Int(greenLabel.text!)
            print(greenLabel.text)
            dieChange (n!)
        }else if blueLabel.hidden == true {
            blueLabel.hidden = false
            blueLabel.text = "\(randomDiceRoll())"
            let n:Int? = Int(blueLabel.text!)
            print(blueLabel.text)
            dieChange (n!)
        }else if purpleLabel.hidden == true {
            purpleLabel.hidden = false
            purpleLabel.text = "\(randomDiceRoll())"
            let n:Int? = Int(purpleLabel.text!)
            print(purpleLabel.text)
            dieChange (n!)
        }else if purpleLabel.hidden == false {
blankScreen()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
blankScreen()
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
    func blankScreen(){
        square1View.hidden = true
        square2View.hidden = true
        square3View.hidden = true
        square4View.hidden = true
        square5View.hidden = true
        square6View.hidden = true
        square7View.hidden = true
        
        redLabel.hidden = true
        orangeLabel.hidden = true
        yellowLabel.hidden = true
        greenLabel.hidden = true
        blueLabel.hidden = true
        purpleLabel.hidden = true
    }
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func dieChange(randomDiceRoll: Int) {
        if randomDiceRoll == 1 {
            square1View.hidden = true
            square2View.hidden = true
            square3View.hidden = true
            square4View.hidden = false
            square5View.hidden = true
            square6View.hidden = true
            square7View.hidden = true
        }else if randomDiceRoll == 2{
            square1View.hidden = false
            square2View.hidden = true
            square3View.hidden = true
            square4View.hidden = true
            square5View.hidden = true
            square6View.hidden = true
            square7View.hidden = false
        }else if randomDiceRoll == 3{
            square1View.hidden = false
            square2View.hidden = true
            square3View.hidden = true
            square4View.hidden = false
            square5View.hidden = true
            square6View.hidden = true
            square7View.hidden = false
        }else if randomDiceRoll == 4{
            square1View.hidden = false
            square2View.hidden = true
            square3View.hidden = false
            square4View.hidden = true
            square5View.hidden = false
            square6View.hidden = true
            square7View.hidden = false
        }else if randomDiceRoll == 5{
            square1View.hidden = false
            square2View.hidden = true
            square3View.hidden = false
            square4View.hidden = false
            square5View.hidden = false
            square6View.hidden = true
            square7View.hidden = false
        }else if randomDiceRoll == 6{
            square1View.hidden = false
            square2View.hidden = false
            square3View.hidden = false
            square4View.hidden = true
            square5View.hidden = false
            square6View.hidden = false
            square7View.hidden = false
        }
    }
}
