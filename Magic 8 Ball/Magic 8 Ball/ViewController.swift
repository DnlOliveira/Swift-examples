//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Silva Oliveira, Daniel on 5/25/18.
//  Copyright © 2018 Silva Oliveira, Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallImage : Int = 0
    @IBOutlet weak var magicBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage() {
        randomBallImage = Int(arc4random_uniform(5))
        magicBallImage.image = UIImage(named: "ball\(randomBallImage + 1)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
}

