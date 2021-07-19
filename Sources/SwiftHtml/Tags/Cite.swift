//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func cite(_ contents: String) -> Node {
        Node(type: .standard, name: "cite", contents: contents)
    }
}

public struct Cite: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .cite(contents)
    }
}
