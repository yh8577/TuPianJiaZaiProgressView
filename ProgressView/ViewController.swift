//
//  ViewController.swift
//  ProgressView
//
//  Created by xiaomage on 15/12/8.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(pv)
        pv.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
//        pv.backgroundColor = UIColor.redColor()
        pv.image = UIImage(named: "Snip20151206_18")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.test), userInfo: nil, repeats: true)
    }
    
    func test()
    {
        pv.progress += 0.1
    }
    
    fileprivate lazy var pv: XMGProgressImageView = XMGProgressImageView(frame: CGRect.zero)
}

