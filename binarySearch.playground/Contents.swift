//: Playground - noun: a place where people can play

func binarySearch(array: [Int], left: Int, right: Int, key: Int) -> Int? {
    guard left <= right else {
        return nil
    }
    let mid = (left + right) / 2
    if array[mid] > key {
        return binarySearch(array: array, left: left, right: mid - 1, key: key)
    }
    else if array[mid] < key {
        return binarySearch(array: array, left: mid + 1, right: right, key: key)
    }
    else {
        return mid
    }
}

let list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


binarySearch(array: list, left: 0, right: 10, key: 5)
binarySearch(array: list, left: 0, right: 10, key: 11)
