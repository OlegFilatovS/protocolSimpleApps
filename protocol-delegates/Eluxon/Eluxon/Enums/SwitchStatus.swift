//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Admin on 20.10.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation


enum SwitchStatus: Togglable {

    case on, off

    mutating func toggle() {

        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }

}
