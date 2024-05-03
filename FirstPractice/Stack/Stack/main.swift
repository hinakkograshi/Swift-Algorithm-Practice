//
//  main.swift
//  Stack
//
//  Created by Hina on 2024/05/04.
//

import Foundation

struct Stack<Element> {
    var isEmpty: Bool {
      return array.isEmpty
    }

    var count: Int {
      return array.count
    }
  fileprivate var array: [Element] = []

  mutating func push(_ element: Element) {
    array.append(element)
  }

  mutating func pop() -> Element? {
    return array.popLast()
  }

  func peek() -> Element? {
    return array.last
  }
}
// 例1: Int
var rwBookStack = Stack<Int>()

rwBookStack.push(1)
rwBookStack.push(2)
rwBookStack.push(3)
rwBookStack.push(4)

print(rwBookStack)
// 例2: String
//var rwBookStack = Stack<String>()
//
//rwBookStack.push("3D Games by Tutorials")
//rwBookStack.push("tvOS Apprentice")
//rwBookStack.push("iOS Apprentice")
//rwBookStack.push("Swift Apprentice")
//
//print(rwBookStack)

// 1
extension Stack: CustomStringConvertible {
  // 2
  var description: String {
    // 3
    let topDivider = "---Stack---\n"
    let bottomDivider = "\n-----------\n"

    // 4 mapでStringに変換
      let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
    // 5
    return topDivider + stackElements + bottomDivider
  }
}

// 🟩String Practice
//struct Stack {
//  fileprivate var array: [String] = []
//    // Push
//    // スタックの一番上に追加する要素を1つのパラメーターとして受け取る
//    mutating func push(_ element: String) {
//        // 末尾への追加はO(1)
//        array.append(element)
//    }
//    // Pop
//    // 空のスタックをポップしようとすると、nil が返されます
//    mutating func pop() -> String? {
//        return array.popLast()
//    }
//    // Peek
//    func peek() -> String? {
//        return array.last
//    }
//}
//func practice() -> Void {
//    // 1
//    var rwBookStack = Stack()
//
//    // 2
//    rwBookStack.push("3D Games by Tutorials")
//    print(rwBookStack)
//    // 3
//    guard let peek1 = rwBookStack.peek() else {
//        return
//    }
//    print(peek1)
//
//    // 4
//    guard let pop = rwBookStack.pop() else {
//        return
//    }
//    print(pop)
//    // 5
//    guard let peek2 = rwBookStack.pop() else {
//        print("nilです。")
//        return
//    }
//    print(peek2)
//}
////practice()
//func main() {
//    var rwBookStack = Stack()
//    rwBookStack.push("3D Games by Tutorials")
//    rwBookStack.push("tvOS Apprentice")
//    rwBookStack.push("iOS Apprentice")
//    rwBookStack.push("Swift Apprentice")
//    print(rwBookStack)
//}
//main()

//// 1
//extension Stack: CustomStringConvertible {
//  // 2
//  var description: String {
//    // 3
//    let topDivider = "---Stack---\n"
//    let bottomDivider = "\n-----------\n"
//
//    // 4
//    let stackElements = array.reversed().joined(separator: "\n")
//      print(stackElements)
//    // 5
//    return topDivider + stackElements + bottomDivider
//  }
//}


