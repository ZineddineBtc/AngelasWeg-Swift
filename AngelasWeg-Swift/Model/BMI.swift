//
//  BMI.swift
//  AngelasWeg-Swift
//
//  Created by zineddine on 12/22/20.
//

import Foundation

struct BMI {
    
    var height: Float
    var weight: Float
    
    init(height: Float, weight: Float) {
        self.height = height
        self.weight = weight
    }
    
    func getStringBMI() -> String{
        let bmi = weight/pow(height, 2)
        return String(format: "%.1f", bmi)
    }
}
