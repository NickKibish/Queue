//
//  LinkedList.swift
//  NKLinkedList
//
//  Created by Mykola Kibysh on 6/23/17.
//

import Foundation

public struct LinkedList<T> {
    fileprivate var root: Node?
    
    public struct LinkedListIterator: IteratorProtocol {
        var node: Node?
        mutating public func next() -> T? {
            defer {
                node = node?.next
            }
            return node?.value
        }
    }
    
    open class Node {
        var value: T
        var next: Node?
        weak var previous: Node?
        
        init(value: T) {
            self.value = value
        }
    }
    
    public init() { }
    
    public init(headValue: T) { root = Node(value: headValue) }
}

// MARK: - Private Properties
extension LinkedList {
    fileprivate var lastNode: Node? {
        if var node = root {
            while case let next? = node.next {
                node = next
            }
            return node
        }
        return nil
    }
}

// MARK: - Public Properties
extension LinkedList {
    public var isEmpty: Bool { return root == nil }
    
    public var head: T? { return root?.value }
    
    public var tail: T? { return lastNode?.value }
    
    public var count: Int {
        if var node = root {
            var c = 1
            while case let next? = node.next {
                node = next
                c += 1
            }
            return c
        }
        return 0
    }
}

// MARK: - Public Methods
extension LinkedList {
    mutating public func append(_ value: T) {
        let newNode = Node(value: value)
        if let lastNode = lastNode {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            root = newNode
        }
    }
    
    mutating public func removeFirst() {
        let firstNode = root
        root = root?.next
        firstNode?.next = nil 
    }
    
    mutating public func removeLast() { lastNode?.previous?.next = nil }
    
    mutating public func removeAll() { root = nil }
}

extension LinkedList: Sequence {
    public func makeIterator() -> LinkedListIterator { return LinkedListIterator(node: root) }
}

