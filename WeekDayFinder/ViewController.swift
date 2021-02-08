//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Андрей Моисеев on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func findDay(_ sender: UIButton) {
    
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        
        let calendar = Calendar.current
        var dateComponets = DateComponents()
        dateComponets.day = Int(day)
        dateComponets.month = Int(month)
        dateComponets.year = Int(year)
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponets) else { return }
        
        let weekday = dateFormater.string(from: date)
        
        resultLabel.text = weekday
    }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
}

