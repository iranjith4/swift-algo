import UIKit

class Node {
    var value: String
    var next: Node?
    weak var previous: Node?
    
    init(value: String) {
        self.value = value
    }
}

class LinkedList {
    var head: Node?
    var tail: Node?
    
    //Append LinkedList
    func append(value: String) {
        let new = Node(value: value)
        if let tail = tail {
            tail.next = new
            new.previous = tail
        } else {
            head = new
        }
        tail = new
    }
    
    func printNodes() {
        var printingNode = head
        while printingNode != nil {
            print(printingNode!.value)
            printingNode = printingNode?.next
        }
    }
}

let a = LinkedList()
a.append(value: "Mercedes")
a.append(value: "Ferrari")
a.append(value: "Redbull")
a.append(value: "Mclaren")
a.append(value: "Renault")

a.printNodes()


