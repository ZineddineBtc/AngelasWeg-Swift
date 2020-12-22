//
//  ResultViewController.swift
//  AngelasWeg-Swift
//
//  Created by zineddine on 12/21/20.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: String?
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmi
    }
    
    @IBAction func recalculateBMI(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
