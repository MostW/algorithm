//: Playground - noun: a place where people can play

public struct Stack<T> {
    
    fileprivate var array = [T]();
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public var top: T? {
        return array.last
    }
    
    public mutating func push(element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
}


var q = Stack<Int>()

q.isEmpty
q.count
q.push(element: 1)
q.push(element: 2)
q.array
q.top
q.pop()

