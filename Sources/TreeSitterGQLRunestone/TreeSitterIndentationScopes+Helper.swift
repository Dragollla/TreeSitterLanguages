import Runestone

public extension TreeSitterIndentationScopes {
    static var graphql: TreeSitterIndentationScopes {
        return TreeSitterIndentationScopes(indent: ["selection_set"], outdent: ["}"])
    }
}
