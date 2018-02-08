//: Playground - noun: a place where people can play

//递归实现
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

//非递归
func binarySearch2(array: [Int], key: Int) -> Int? {
    var left = 0
    var right = array.count
    while left < right {
        let  mid = (left + right) / 2
        if array[mid] == key {
            return mid
        } else if array[mid] < key {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return nil
}

let list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


binarySearch(array: list, left: 0, right: 10, key: 5)
binarySearch(array: list, left: 0, right: 10, key: 11)

binarySearch2(array: list, key: 5)
binarySearch2(array: list, key: 11)
