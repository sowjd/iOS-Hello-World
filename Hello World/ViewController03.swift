//
//  ViewController03.swift
//  Hello World
//
//  Created by Jenny on 2022/09/05.
//

import UIKit

class ViewController03: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    var isZoomed = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    let zoomSacle:CGFloat = 1.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        imgView.image = imgOn
    }
    
    @IBAction func resizeImage(_ sender: UIButton) {
        var width:CGFloat, height:CGFloat;
        
        if(isZoomed) { // unzoom
            width = imgView.frame.width / zoomSacle;
            height = imgView.frame.height / zoomSacle;
            btnResize.setTitle("확대", for: .normal)
        } else { // zoom
            width = imgView.frame.width * zoomSacle;
            height = imgView.frame.height * zoomSacle;
            btnResize.setTitle("축소", for: .normal)
        }
        isZoomed = !isZoomed;
        imgView.frame.size = CGSize(width: width, height: height)
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
}
