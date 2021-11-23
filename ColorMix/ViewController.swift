//
//  ViewController.swift
//  ColorMix
//
//  Created by Justin Wallen on 11/23/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.backgroundColor = .black
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    func updateColor() -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        return color
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
         colorView.backgroundColor = updateColor()
        
    }
    
}

