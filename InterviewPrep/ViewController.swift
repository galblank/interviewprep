//
//  ViewController.swift
//  InterviewPrep
//
//  Created by Gal Blank on 11/28/18.
//  Copyright © 2018 galblank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func pairFinder(number: Int, array: [Int]) -> Int {
        var pairs = 0
        var pairsArray = array
        for i in 0..<number where pairsArray[i] > -1 {
            for j in i+1..<number {
                if pairsArray[i] == pairsArray[j] {
                    pairs += 1
                    pairsArray[i] = -1
                    pairsArray[j] = -1
                    break
                }
            }
        }
        return pairs
    }

}

