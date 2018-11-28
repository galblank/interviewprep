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
        pairFinder()
    }
    func pairFinder() {
        let n = 9
        let ar = [10,20,20,10,10,30,50,10,20]
        var pairs = 0
        var pairsArray = ar
        for i in 0..<n where pairsArray[i] > -1 {
            for j in i+1..<n {
                if pairsArray[i] == pairsArray[j] {
                    pairs += 1
                    pairsArray[i] = -1
                    pairsArray[j] = -1
                    break
                }
            }
        }
        print(pairs)
    }

}

