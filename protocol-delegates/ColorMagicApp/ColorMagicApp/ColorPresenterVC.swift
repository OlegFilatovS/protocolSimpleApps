//
//  ViewController.swift
//  ColorMagicApp
//
//  Created by Филатов Олег on 18.10.17.
//  Copyright © 2017 FilatovOleg. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {



    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidChose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self

        }
    }

}

