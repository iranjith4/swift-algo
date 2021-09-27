import Foundation

public struct Stack<T> {
    var storage: [T] = []
    public init() { }
    
    public mutating func push(element: T) {
        storage.append(element)
    }
    
    public mutating func pop() -> T? {
        return storage.popLast()
    }
    
    public func peek() -> T? {
        storage.last
    }
    
    public var isEmpty: Bool {
        return peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        --- top ---
        \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
        """
    }
}
