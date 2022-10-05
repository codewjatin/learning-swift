print("Enter a two digit equation? (eg. 5 / 30) ", terminator: "")
let eqn = readLine()

if let eqn, eqn.count > 2 {
    if eqn.firstIndex(of: "+") != nil {
        let split = eqn.split(separator: "+")
            .map { Float($0.split(separator: " ").joined()) }
        if let num1 = split[0], let num2 = split[1] {
            print("\(num1) + \(num2) = \(num1 + num2)")
        }
    } else if eqn.firstIndex(of: "-") != nil {
        let split = eqn.split(separator: "-")
            .map { Float($0.split(separator: " ").joined()) }
        if let num1 = split[0], let num2 = split[1] {
            print("\(num1) - \(num2) = \(num1 - num2)")
        }
    } else if eqn.firstIndex(of: "*") != nil {
        let split = eqn.split(separator: "*")
            .map { Float($0.split(separator: " ").joined()) }
        if let num1 = split[0], let num2 = split[1] {
            print("\(num1) * \(num2) = \(num1 * num2)")
        }
    } else if eqn.firstIndex(of: "/") != nil {
        let split = eqn.split(separator: "/")
            .map { Float($0.split(separator: " ").joined()) }
        if let num1 = split[0], let num2 = split[1] {
            print("\(num1) / \(num2) = \(num1 / num2)")
        }
    }
}
