//
//  ViewController.swift
//  AngelasWeg-Swift
//
//  Created by zineddine on 12/20/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var hghtLabel: UILabel!
    
    @IBOutlet weak var wghtLabel: UILabel!
    
    @IBOutlet weak var wghtSlider: UISlider!
    @IBOutlet weak var hghtSlider: UISlider!
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        hghtLabel.text = String(format:"%.2f", sender.value) + " m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        wghtLabel.text = String(format:"%.0f", sender.value) + " kg"
    }
    
    var bmi = BMI(height: 0, weight: 0)
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        bmi.height = hghtSlider.value
        bmi.weight = wghtSlider.value
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = bmi.getStringBMI()
        }
    }

}

