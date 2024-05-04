
public struct Queue<T> {

  fileprivate var list = LinkedList<T>()

  public var isEmpty: Bool {
    return list.isEmpty
  }

  public mutating func enqueue(_ element: T) {
    list.append(element)
  }

  public mutating func dequeue() -> T? {
    guard !list.isEmpty, let element = list.first else { return nil }

    list.remove(element)

    return element.value
  }

  public func peek() -> T? {
    return list.first?.value
  }
}

extension Queue: CustomStringConvertible {

  public var description: String {

    return list.description
  }
}

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(3)
queue.enqueue(57)
print(queue)

var queue2 = Queue<String>()
queue2.enqueue("mad")
queue2.enqueue("lad")
//madをdequeue
if let first = queue2.dequeue() {
  print(first)
}
print(queue2)








//public struct Queue {
//    // 1
//    fileprivate var list = LinkedList<Int>()
//
//    // 2
//    public mutating func enqueue(_ element: Int) {
//      list.append(element)
//    }
//
//    // 1
//    public mutating func dequeue() -> Int? {
//      // 2
//      guard !list.isEmpty, let element = list.first else { return nil }
//
//      list.remove(element)
//
//      return element.value
//    }
//
//    public func peek() -> Int? {
//      return list.first?.value
//    }
//
//    public var isEmpty: Bool {
//      return list.isEmpty
//    }
//}
//
//// 1
//extension Queue: CustomStringConvertible {
//  // 2
//  public var description: String {
//    // 3
//    return list.description
//  }
//}
//
//var queue = Queue()
//queue.enqueue(10)
//queue.enqueue(3)
//queue.enqueue(57)
//print(queue)

