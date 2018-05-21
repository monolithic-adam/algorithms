//Sum of Digits / Digital Root

func digitalRoot(of number: Int) -> Int {
    guard number > 10 else { return number }
    return digitalRoot(of: String(number).flatMap { Int(String($0)) }.reduce(0, +))
}
