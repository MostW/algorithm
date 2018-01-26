//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let list = [ 1, 3, 2, 4, 9, 6, 5, 8, 7 ]

func quickSort(array: [Int], left: Int, right: Int) -> [Int]  {
    var a = array
    guard left < right else { return a}
    
    var i = left
    var j = right
    let key = a[left]
    while i < j {
        while i < j && a[j] >= key {
            j -= 1
        }
        a[i] = a[j]
        
        while i < j && a[i] <= key {
            i += 1
        }
        a[j] = a[i]
    }
    a[i] = key
    print(a)
    a = quickSort(array: a, left: left, right: i - 1)
    a = quickSort(array: a, left: i + 1, right: right)
    return a
}

quickSort(array: list, left: 0, right: list.count - 1)

