//
//  ViewController.swift
//  secondweekstudy
//
//  Created by alican on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(calculateFibonacci())
    }

   // This function calculated first 1000 fibonacci number but we only return bigger 750 ones and function upperbound is 1000.
   func calculateFibonacci() -> [Double]{
        var fibonacciLength : Double = 1000 , leftNumber : Double = 0 , rightNumber : Double = 1 , nextNumber : Double = 0
        var myArr : [Double] = [Double]()

        while fibonacciLength > 2 {
            nextNumber = leftNumber + rightNumber
            leftNumber = rightNumber
            rightNumber = nextNumber
            if rightNumber > 750 {
                myArr.append(rightNumber)
            }
            fibonacciLength -= 1
        }
        return myArr
    }
}

