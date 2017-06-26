//
//  Queue.swift
//  NKLinkedList
//
//  Created by Mykola Kibysh on 6/26/17.
//

import Foundation

public struct Queue<T> {
    fileprivate var list = LinkedList<T>()
    
    public init() { }
    public init(with firstElement: T) { list.append(value: firstElement) }
    
}

extension Queue {
    public func enqueue(element: T) {
        
    }
    
    public func dequeue(element: T) {
        
    }
}
