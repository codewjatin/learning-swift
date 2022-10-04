// TODO: IMPLEMENT A ARRAY CLASS YOURSELF

// Implementation of Array(repeating:count)

func ArrayFrom(repeating: Int, count: Int) -> [Int] {
    var arr: [Int] = []
    var count = count
    while count > 0 {
        arr.append(repeating)
        count -= 1
    }
    return arr
}

func ArrayFrom(repeating: Double, count: Int) -> [Double] {
    var arr: [Double] = []
    var count = count
    while count > 0 {
        arr.append(repeating)
        count -= 1
    }
    return arr
}

func ArrayFrom(repeating: Bool, count: Int) -> [Bool] {
    var arr: [Bool] = []
    var count = count
    while count > 0 {
        arr.append(repeating)
        count -= 1
    }
    return arr
}

print(ArrayFrom(repeating: 5, count: 4))
