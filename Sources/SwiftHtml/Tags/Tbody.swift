//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func tbody(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "tbody", children: children)
    }
}

public struct Tbody: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .tbody(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

