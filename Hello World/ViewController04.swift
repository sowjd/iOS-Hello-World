//
//  ViewController04.swift
//  Hello World
//
//  Created by Jenny on 2022/09/05.
//

import UIKit

class ViewController04: UIViewController {
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    var formatter: DateFormatter!
    let timeSelector: Selector = #selector(ViewController04.updateCurrentTime)
    let interval = 20.0 // 20 sec
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        
        updateCurrentTime()
        // target: 동작될 view
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateCurrentTime() {
        let date = NSDate()
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
    }
}
