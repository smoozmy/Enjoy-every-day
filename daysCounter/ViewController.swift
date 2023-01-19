//
//  ViewController.swift
//  daysCounter
//
//  Created by Александр Крапивин on 18.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var daysResultLabel: UILabel!
    private var countDays: String = ""
    
    @IBAction private func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        countDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction private func tapToResult(_ sender: Any) {
        daysResultLabel.text = "Ты наслаждаешься жизнью \nуже \(countDays)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

