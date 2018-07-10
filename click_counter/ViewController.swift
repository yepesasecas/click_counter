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
    var label1: UILabel!
    var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label 1
        let label1 = UILabel()
        label1.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label1.text = "0"
        view.addSubview(label1)
        self.label1 = label1
        
        //label 2
        let label2 = UILabel()
        label2.frame = CGRect(x: 210, y: 150, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        //Increment button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 150, y: 250, width: 150, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        incrementButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), for: UIControlEvents.touchUpInside)
        
        // Decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 350, width: 150, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), for: UIControlEvents.touchUpInside)
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.count -= 1
        self.label1.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func changeBackgroundColor() {
        if self.count % 2 == 0 {
            view.backgroundColor = UIColor.white
        }
        else{
            view.backgroundColor = UIColor.gray
        }
    }

}

