//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        let arr = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
        let num1 = Int.random(in: 0...5)
        let num2 = Int.random(in: 0...5)
                
        //diceImageView1.image = UIImage(imageLiteralResourceName: arr[num1])
        diceImageView1.image = UIImage(imageLiteralResourceName: arr.randomElement() ?? arr[0])
        diceImageView2.image = UIImage(imageLiteralResourceName: arr[num2])
    }
}
