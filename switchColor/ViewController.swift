//
//  ViewController.swift
//  switchColor
//
//  Created by Apple on 2018/5/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    ///多個元件的action可以連到同一個function//
    ///red/green/blue/alpha均連來此處///
    @IBAction func redSliderChange(_ sender: UISlider) {
        ImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        ///Label顯示ＲＧＢ///
        if sender == redSlider {
            redLabel.text = "\(redSlider.value)"
        }else if sender == greenSlider {
            greenLabel.text = "\(greenSlider.value)"
        }else {blueLabel.text = "\(blueSlider.value)"
            
        }
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

