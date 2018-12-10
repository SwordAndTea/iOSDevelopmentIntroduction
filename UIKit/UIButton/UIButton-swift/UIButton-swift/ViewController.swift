//
//  ViewController.swift
//  UIButton-swift
//
//  Created by 向尉 on 2018/12/9.
//  Copyright © 2018 SwordAndTea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        button.center = self.view.center//set the button's position to the view's center
        button.setTitle("click", for: .normal)//set text while UIButton is not under clicking
        button.setTitle("selected", for: .normal)//set text while UIButton is under clicking
        button.setImage(UIImage(named: "user.png"), for: .normal)//the image is in Assets.xcassets
        
        button.addTarget(self, action: #selector(clickButtonInside(sender:)), for: .touchUpInside)
        //Uncomment the code below to test add same target twice, how many times will log in the console
        //button.addTarget(self, action: #selector(clickButtonInside(sender:)), for: .touchUpInside)
        
        button.addTarget(self, action: #selector(clickButtonOutside(sender:)), for: .touchUpOutside)
    }


    @objc func clickButtonInside(sender: UIButton) {
        print("clicked touch up inside")
    }
    
    @objc func clickButtonOutside(sender: UIButton) {
        print("clicked touch up outside")
    }
}

