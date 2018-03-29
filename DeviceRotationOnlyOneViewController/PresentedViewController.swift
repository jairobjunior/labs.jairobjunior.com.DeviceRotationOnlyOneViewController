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
        self.dismiss(animated: true) { () -> Void in
            UIDevice.current.setValue(Int(UIInterfaceOrientation.portrait.rawValue), forKey: "orientation")
        }
    }

    func canRotate() -> Void {}
}

