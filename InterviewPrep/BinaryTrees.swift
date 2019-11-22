//
//  File.swift
//  InterviewPrep
//
//  Created by Gal Blank on 11/21/19.
//  Copyright © 2019 galblank. All rights reserved.
//

import Foundation

class Node {

    var data = 0;
    var left: Node? = nil
    var right: Node? = nil

    init(_data: Int) {
        data = _data;
    }
}
///convert an array of integers to a binary tree
class BinaryTree {

    static var root: Node? = nil

    init(array: [Int]) {
        let result = createTreeNode(arr: array, index: 0)
        print(result)
    }

    /* A function that constructs Balanced Binary Search Tree
     from a sorted array */
    func createTreeNode(arr: [Int], index: Int) -> Node? {
        if index < arr.count {
            let node = Node(_data: arr[index])
            node.left = createTreeNode(arr: arr, index:2 * index + 1);
            node.right = createTreeNode(arr: arr, index: 2 * index + 2);
            return node;
        }
        return  nil;
    }
}

