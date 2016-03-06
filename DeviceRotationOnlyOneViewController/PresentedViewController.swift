//
//  PresentedViewController.swift
//  DeviceRotationOnlyOneViewController
//
//  Created by Jairo Barros on 3/6/16.
//  Copyright © 2016 jairobjunior. All rights reserved.
//

import UIKit

class PresentedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didDismissButtonPress(sender: UIButton) {
        self.dismissViewControllerAnimated(true) { () -> Void in
            UIDevice.currentDevice().setValue(Int(UIInterfaceOrientation.Portrait.rawValue), forKey: "orientation")
        }
    }
    
    func canRotate() -> Void {}
}
