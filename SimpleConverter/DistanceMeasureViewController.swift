//
//  DistanceMeasureViewController.swift
//  SimpleConverter
//
//  Created by Subrat Gyawali on 1/23/19.
//  Copyright © 2019 Subrat Gyawali. All rights reserved.
//

import UIKit

class DistanceMeasureViewController: UIViewController {

    // MARK: - outlet
    @IBOutlet weak var displayDistanceValue: UILabel!
    @IBOutlet weak var distanceValue: UITextField!
    
    // MARK: - Buton Click action to convert temperature
    @IBAction func convertToCentimeter(_ sender: Any) {
        guard let temp = distanceValue?.text, !temp.isEmpty else {
            self.present(showDialog(message: "Please Enter Distance Value"),animated: true,completion: nil)
            return
        }
        let inches = Double(temp) ?? 0
        displayDistanceValue.text = String(inches * 2.54) + " Centimeter"
        
    }
    
    @IBAction func convertToInches(_ sender: Any) {
        guard let temp = distanceValue?.text, !temp.isEmpty else {
            self.present(showDialog(message: "Please Enter Distance Value"),animated: true,completion: nil)
            return
        }
        let centimeter = Double(temp) ?? 0
        displayDistanceValue.text = String(centimeter / 2.54) + " Inches"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Distance Conversion"
    }

}
