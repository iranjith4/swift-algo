import UIKit

var greeting = "Hello, playground"


func exampleStack() {
    var stack = Stack<Int>.init()
    stack.push(element: 1)
    stack.push(element: 3)
    stack.push(element: 4)
    stack.push(element: 5)

    print("Popped \(String(describing: stack.pop()))")

    print(stack.description)
}

exampleStack()
