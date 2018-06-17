//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jonathan Lo on 2018-04-01.
//  Copyright © 2018 Jonathan Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImage: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage () {
        randomBallNumber = Int(arc4random_uniform(5))
        magicBallImage.image = UIImage(named: ballArray[randomBallNumber])
//        magicBallImage.image = UIImage(named: "ball\(randomBallNumber)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}

