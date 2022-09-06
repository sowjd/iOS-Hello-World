//
//  ViewController05.swift
//  Hello World
//
//  Created by Jenny on 2022/09/06.
//

import UIKit

class ViewController05: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var pickerEmoji: UIPickerView!
    @IBOutlet var lblEmojiText: UILabel!
    @IBOutlet var lblEmoji: UILabel!
    
    let NUM_OF_COLUMNS = 1
    var emojisText = ["Dog", "Monkey", "Fox", "Lion", "Tiger", "Chick", "Whale", "Turtle", "Butterfly", "Octopus"]
    var emojis = ["🐶", "🐒", "🦊", "🦁", "🐯", "🐥", "🐳", "🐢", "🦋", "🐙"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // UIPickerViewDataSource, # of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return NUM_OF_COLUMNS
    }
    
    // UIPickerViewDataSource, # of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return emojis.count
    }
    
    // UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return emojisText[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblEmojiText.text = emojisText[row]
        lblEmoji.text = emojis[row]
    }
}
