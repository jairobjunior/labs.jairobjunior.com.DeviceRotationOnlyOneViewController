//
//  ViewController.swift
//  DeviceRotationOnlyOneViewController
//
//  Created by Jairo Barros on 3/5/16.
//  Copyright © 2016 jairobjunior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)

        if (self.isMovingFromParentViewController) {
            UIDevice.current.setValue(Int(UIInterfaceOrientation.portrait.rawValue), forKey: "orientation")
        }
    }

    func canRotate() -> Void {}
}

