//
//  TemperatureViewController.swift
//  SimpleConverter
//
//  Created by Subrat Gyawali on 1/23/19.
//  Copyright © 2019 Subrat Gyawali. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var labelDisplayTemp: UILabel!
    @IBOutlet weak var temperatureValue: UITextField!
    
    @IBAction func convertToFahrenheit(_ sender: Any) {
        guard let temp = temperatureValue?.text, !temp.isEmpty else {
            self.present(showDialog(message: "Please Enter Temperature"),animated: true,completion: nil)
            return
        }
        let celcius = Double(temp) ?? 0
        labelDisplayTemp.text = String(((celcius * 9 / 5.0) + 32)) + " °F"
    }
    
    @IBAction func convertToCelsius(_ sender: Any) {
        guard let temp = temperatureValue?.text, !temp.isEmpty else {
            self.present(showDialog(message: "Please Enter Temperature"),animated: true,completion: nil)
            return
        }
        let fahrenheit = Double(temp) ?? 0
        labelDisplayTemp.text = String(((fahrenheit - 32) * 5 / 9.0)) + " °C"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Temperature Conversion"
    }
    
}
