//
//  ColorTransferDelegate.swift
//  ColorMagicApp
//
//  Created by Admin on 19.10.17.
//  Copyright © 2017 FilatovOleg. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChose(color: UIColor, withName colorName: String)
}
