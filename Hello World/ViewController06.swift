//
//  ViewController06.swift
//  Hello World
//
//  Created by Jenny on 2022/09/06.
//

import UIKit

class ViewController06: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    
    var imgOn: UIImage?
    var imgOff: UIImage?
    var isOn: Bool!
    var okAction: UIAlertAction!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        imgView.image = imgOff
        isOn = false
        
        okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
    }
    
    @IBAction func turnOn(_ sender: UIButton) {
        if isOn {
            let alert = UIAlertController(title: "Alert", message: "현재 On 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        } else {
            imgView.image = imgOn
            isOn = true
        }
    }
    
    @IBAction func turnOff(_ sender: UIButton) {
        if isOn {
            imgView.image = imgOff
            isOn = false
        } else {
            let alert = UIAlertController(title: "Alert", message: "현재 Off 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func control(_ sender: UIButton) {
        let alert = UIAlertController(title: "램프 제어", message: "동작을 선택해주세요.", preferredStyle: UIAlertController.Style.alert)
        
        let onAction = UIAlertAction(title: "램프를 켭니다 (On)", style: UIAlertAction.Style.default) {
            ACTION in self.imgView.image = self.imgOn
            self.isOn = true
        }
        
        let offAction = UIAlertAction(title: "램프를 끕니다 (Off)", style: UIAlertAction.Style.default) {
            ACTION in self.imgView.image = self.imgOff
            self.isOn = false
        }
        
        let cancleAction = UIAlertAction(title: "취소", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(onAction)
        alert.addAction(offAction)
        alert.addAction(cancleAction)
        present(alert, animated: true, completion: nil)
    }
}
