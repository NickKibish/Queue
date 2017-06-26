//
//  Queue.swift
//  NKLinkedList
//
//  Created by Mykola Kibysh on 6/26/17.
//

import Foundation
import NKLinkedList

public struct Queue<T> {
    fileprivate var list = LinkedList<T>()
    
    public init() { }
    /// Create queue with first element
    ///
    /// - Parameter firstElement: element in queue
    public init(with firstElement: T) { list.append(firstElement) }
}

// MARK: - Public Values
extension Queue {
    public var isEmpty: Bool { return list.isEmpty }
    
    public var size: Int { return list.count }
}

// MARK: - Public Methods
extension Queue {
    /// Add new element to Queue
    ///
    /// - Parameter element: element to add
    public mutating func enqueue(_ element: T) {
        list.append(element)
    }
    
    /// Remove element from queue
    ///
    /// - Returns: removed element
    @discardableResult public mutating func dequeue() -> T? {
        defer { list.removeFirst() }
        return list.head
    }
}
