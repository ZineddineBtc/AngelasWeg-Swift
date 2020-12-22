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
        hghtLabel.text = String(format:".%2f", sender.value) + " m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        wghtLabel.text = String(format:".%0f", sender.value) + " kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let bmi = wghtSlider.value / pow(hghtSlider.value, 2)
        let resultViewController = ResultViewController()
        resultViewController.bmi = String(bmi)
        self.present(secondViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
