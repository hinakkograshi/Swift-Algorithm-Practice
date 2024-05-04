public struct LinkedList<T>: CustomStringConvertible {
  private var head: Node<T>?
  private var tail: Node<T>?

  public init() { }

  public var isEmpty: Bool {
    return head == nil
  }

  public var first: Node<T>? {
    return head
  }

  public mutating func append(_ value: T) {
    let newNode = Node(value: value)
    if let tailNode = tail {
      newNode.previous = tailNode
      tailNode.next = newNode
    } else {
      head = newNode
    }
    tail = newNode
  }

  public mutating func remove(_ node: Node<T>) -> T {
    let prev = node.previous
    let next = node.next
// リストの最初のノードを削除しない場合は、nextポインタを更新
    if let prev = prev {
      prev.next = next
// リストの最初のノードを削除する場合はheadポインタを更新
    } else {
      head = next
    }
// 前ポインタを削除されたノードの前ポインタに更新
    next?.previous = prev
// リストの最後のノードを削除する場合は、末尾を更新
    if next == nil {
      tail = prev
    }
// 削除されたノードの前と次のポインタに nil を代入
    node.previous = nil
    node.next = nil
// 削除されたノードの値を返す
    return node.value
  }

  public var description: String {
    var text = "["
    var node = head

    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    return text + "]"
  }
}

public class Node<T> {
  public var value: T
  public var next: Node<T>?
  public var previous: Node<T>?

  public init(value: T) {
    self.value = value
  }
}
