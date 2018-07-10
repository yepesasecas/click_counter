//
//  ViewController.swift
//  click_counter
//
//  Created by Andres Yepes on 7/9/18.
//  Copyright © 2018 limonada_de_mango. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @IBAction func decrementCount(){
        self.count -= 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @IBAction func changeBackgroundColor() {
        if self.count % 2 == 0 {
            view.backgroundColor = UIColor.white
        }
        else{
            view.backgroundColor = UIColor.gray
        }
    }

}

