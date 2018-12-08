//
//  ViewController.swift
//  UILabel-swift
//
//  Created by 向尉 on 2018/12/8.
//  Copyright © 2018 SwordAndTea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        //label.frame = CGRect(x: 0, y: 0, width: 150, height: 40)
        label.text = "hello world"
        label.textColor = UIColor.red
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.shadowColor = UIColor.lightGray
        label.shadowOffset = CGSize(width: 10, height: 10)
        
        /*To test line change, uncomment those code*/
        //label.text = "much much much much text"
        //label.numberOfLines = 0
        self.view.addSubview(label)
    }


}

