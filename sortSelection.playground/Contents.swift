//: Playground - noun: a place where people can play

func selectionSort(array:[Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    var a = array
    for x in 0 ..< a.count - 1 {
        var min = x
        for y in x + 1 ..< a.count {
            if a[y] < a[min] {
                min = y
            }
        }
        a.swapAt(x, min)
    }
    return a
}

let list = [0, 9, 4, 5, 3, 1, 6]

selectionSort(array: list)
