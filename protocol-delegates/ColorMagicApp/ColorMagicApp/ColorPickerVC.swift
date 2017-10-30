//
//  ColorPickerVC.swift
//  ColorMagicApp
//
//  Created by Филатов Олег on 18.10.17.
//  Copyright © 2017 FilatovOleg. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func colorBtnWasPressed(sender:UIButton) {
        if delegate != nil {
            delegate?.userDidChose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }

    }

        

}
