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
        let arr = [1,10,5,1,0,6]
        let tree = BinaryTree(array: arr)
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

    func countingValleys(n: Int, s: String) -> Int {
        let steps = Array(s)
        var valleys = 0
        var level = 0
        var prevLevel = 0
        for step in steps {
            if step == "U" {
                prevLevel = level
                level += 1
            } else {
                prevLevel = level
                level -= 1
            }
            if level == 0 && prevLevel < 0 {
                valleys += 1
            }
        }
        return valleys
    }

    func jumpingOnClouds(cloudsArray: [Int]) -> Int {
        var minSteps = 0
        var i = 0
        while i < cloudsArray.count - 1 {
            if i + 2 < cloudsArray.count && cloudsArray[i + 2] == 0 {
                i += 2
            } else {
                i += 1
            }
            minSteps += 1
        }
        return minSteps
    }

}

