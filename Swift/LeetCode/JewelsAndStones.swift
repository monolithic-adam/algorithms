//Jewels And Stones
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        return (S.filter { J.contains($0) } as [Character]).count
    }
}
