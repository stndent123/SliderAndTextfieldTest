//
//  ViewController.swift
//  SliderAndTextfieldTest
//
//  Created by joseph on 2020/3/21.
//  Copyright © 2020 joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ShowTextField: UITextField!
    @IBOutlet weak var WordLengthLabel: UILabel!
    @IBOutlet weak var FontSizeSlider: UISlider!
    @IBOutlet weak var WordSizeLabel: UILabel!
    var fontsize:Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func ShowWordSize(_ sender:UITextField) {
        WordSizeLabel.text = "字體大小" + String(FontSizeSlider.value)
        WordLengthLabel.text = "字數" + String(ShowTextField.text!.count)
        
    }
    @IBAction func FontSizeSliderChange(_ sender: UISlider) {
        let font = ShowTextField.font!
      fontsize = sender.value
        WordSizeLabel.text = "字體大小" + String(format:"%.2f",fontsize)
        ShowTextField.font = font.withSize(CGFloat(fontsize))
    }
    

}

