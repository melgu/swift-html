//
//  Blockquote.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<blockquote>` tag specifies a section that is quoted from another source.
/// 
/// Browsers usually indent `<blockquote>` elements (look at example below to see how to remove the indentation).
open class Blockquote: Tag {
    
    public override init(node: Node? = nil, _ children: [Tag] = []) {
        super.init(node: .init(name: Self.name), children)
    }
}

public extension Blockquote {
    /// Specifies the source of the quotation
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
}
