import Foundation

func shuffle(_ input: [Character]) -> [Character] {
    let count = arc4random() % 10
    var array = input
    for _ in 0..<count {
        let random = arc4random() % UInt32(array.count)
        let removed = array.remove(at: Int(random))
        array.append(removed)
    }
    return array
}

func typoglycemia(_ input: String) -> String {
    let array = input.split(separator: " ")
        .map { (word) -> String in
            if word.count > 4 {
                let first = word.first!
                let last = word.last!
                
                let middle = word.suffix(word.count - 1).prefix(word.count - 2)
                let shuffled = shuffle(Array(middle)).map{ String($0) }.joined(separator: "")
                return "\(first)\(shuffled)\(last)"
            } else {
                return String(word)
            }
        }
    return array.joined(separator: " ")
}

let text = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
print("original: ", text)
print("shuffled: ", typoglycemia(text))