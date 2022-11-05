//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Aditya Bansal on 5/11/2022.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IB Outlet allows me to refernce a UI Element
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var  diceImageView1: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceTwo") , #imageLiteral(resourceName: "DiceSix") ] // let keyword is for constants and var is for variables

        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
       
        // We can also use the 35 and 36 line instead of 31 32
        /* diceImageView1.image = diceArray.randomElement()
         diceImageView2.image = diceArray.randomElement() */
        
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
        
    }
     
    
}
