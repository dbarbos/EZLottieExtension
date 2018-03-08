//
//  ViewController.swift
//  EZLottieExtension
//
//  Created by dbarbos on 03/08/2018.
//  Copyright (c) 2018 dbarbos. All rights reserved.
//

import UIKit
import Lottie
import EZLottieExtension // import EZLottieExtension to your project

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myButton.addLottieView(LOTAnimationView(name: "done_button"), scale: 4)
    }
    
    
    @IBAction func myButtonPress(_ sender: Any) {
        myButton.playAnimation()
    }
    

}

