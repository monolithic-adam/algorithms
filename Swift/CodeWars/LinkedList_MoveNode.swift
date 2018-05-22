//Linked Lists - Move Node

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

struct Context {
    var source:Node?
    var dest:Node?
}

enum ContextError: Error {
  case sourceNilError
}

func moveNode(source:Node?, dest:Node?) throws -> Context? {
   if let s = source {
        let newDest = Node(s.data)
        newDest.next = dest
        return Context(source: s.next, dest: newDest)
    }

    throw ContextError.sourceNilError
}
