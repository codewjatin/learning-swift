class MyArray {
    var count = 0
    var isEmpty: Bool { return count > 0 ? false : true }
    var items: [Int] = [] {
        didSet {
            count = items.count
        }
    }

    init(_ numbers: Int...) {
        for i in numbers {
            items.append(i)
            count += 1
        }
    }

    init(repeating: Int, count: Int) {
        var arr: [Int] = []
        var count = count
        while count > 0 {
            arr.append(repeating)
            count -= 1
            self.count += 1
        }
        items = arr
    }
}

// Some test cases

var myarr = MyArray(1, 2, 3)
var myarr2 = MyArray(repeating: 5, count: 6)
var myarr3 = MyArray()

print(myarr.items, myarr.count, myarr.isEmpty)
print(myarr2.items, myarr2.count, myarr2.isEmpty)
print(myarr3.items, myarr3.count, myarr3.isEmpty)

myarr3.items = [1, 2, 3]
print(myarr3.items, myarr3.count, myarr3.isEmpty)
