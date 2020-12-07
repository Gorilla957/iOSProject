//
//  ViewController.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import UIKit

class ViewController: UIViewController {

    lazy var btn0: UIButton = {
        let aBtn = UIButton()
        aBtn.addTarget(self, action: #selector(btn0Action(sender:)), for:.touchUpInside)
        aBtn.backgroundColor = UIColor.init(red: 1, green: 0, blue: 0, alpha: 0.5)
        return aBtn
    }()
    
    lazy var btn1: UIButton = {
        let aBtn = UIButton()
        aBtn.addTarget(self, action: #selector(btn1Action(sender:)), for:.touchUpInside)
        aBtn.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 0.5)
        return aBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(btn0)
        btn0.frame = CGRect.init(x: 50, y: 100, width: 100, height: 100)
        btn0.enlargeRect = UIEdgeInsets.init(top: 10, left: 50, bottom: 10, right: 50)
        
        self.view.addSubview(btn1)
        btn1.frame = CGRect.init(x: 300, y: 100, width: 100, height: 100)
        btn1.enlargeRect = UIEdgeInsets.init(top: 10, left: 50, bottom: 10, right: 50)
        
    }

    @objc func btn0Action(sender: UIButton) {
        
        print("tap0........")
    }

    @objc func btn1Action(sender: UIButton) {
        
        print("tap1........")
    }
}

