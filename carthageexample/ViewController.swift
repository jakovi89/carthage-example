//
//  ViewController.swift
//  carthageexample
//
//  Created by Jakob Vinther-Larsen on 12/10/2015.
//  Copyright © 2015 vinther-moen. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.redColor()
        
        let centerView = UIView()
        
        centerView.backgroundColor = UIColor.whiteColor()
        
        view.addSubview(centerView)
        
        //--------
        // Code within this following block will feature autocompletion and suggestion in xcode 7
        // But from my experience it doesn't seem to work in AppCode build 142.5239
        //--------
        centerView.snp_makeConstraints { (make) -> Void in
            make.center.equalTo(centerView.superview!)
            make.width.height.equalTo(100)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

