//
//  Utils.swift
//  SimpleConverter
//
//  Created by Subrat Gyawali on 1/24/19.
//  Copyright © 2019 Subrat Gyawali. All rights reserved.
//

import Foundation
import UIKit

func showDialog(message: String) -> UIAlertController{
    let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
        switch action.style{
        case .default:
            print("default")
            
        case .cancel:
            print("cancel")
            
        case .destructive:
            print("destructive")
            
            
        }}))
    return alert
}
