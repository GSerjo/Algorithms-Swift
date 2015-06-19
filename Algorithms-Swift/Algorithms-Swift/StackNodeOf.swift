//
//  StackNodeOf.swift
//  Algorithms-Swift
//
//  Created by Serjo on 19/06/15.
//  Copyright © 2015 Serjo. All rights reserved.
//

import UIKit

class StackNodeOf<T> {
    
    private var _first: Node<T>?
    private var _count: Int = 0
    
    var isEmpty: Bool {
        get {
            return count == 0
        }
    }
    
    var count: Int {
        return _count
    }
    
    
    func push(item: T) {
        let old = _first
        _first = Node<T>(next: old, value: item)
        _count++
    }
    
    func pop() -> T? {
        if let result = _first?.value {
            _count--
            _first = _first?.next
            return result
        }
        return .None
    }
    
}

private class Node<T> {
    
    var next: Node<T>?
    var value: T
    
    init(next: Node<T>?, value: T){
        self.next = next
        self.value = value
    }
}
