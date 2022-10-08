print("Enter the range for fibonacci? ", terminator: "")
let num = Int(readLine()!)

var fib = [0, 1]

if var num, num > 2 {
    while num > 2 {
        let sum = fib[fib.endIndex - 2] + fib[fib.endIndex - 1]
        fib.append(sum)
        num -= 1
    }
    print("The fibonacci for range is \(fib)")
} else {
    print("There's a else case here!")
}
