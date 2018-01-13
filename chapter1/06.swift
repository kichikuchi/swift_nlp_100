import Foundation

func nGram(with textArray: [String], n: Int) -> [String] {
    if textArray.count < n {
        let reduced = textArray.reduce("", +)
        return [reduced]
    }
    
    var result: [String] = []
    
    for i in 0..<(textArray.count - (n - 1)) {
        var word = ""
        for ii in i..<(i + n) {
            word += textArray[ii]
        }
        result.append(word)
    }
    
    return result
}

func characterNGram(with text: String, n: Int) -> [String] {
    let array = Array(text).map { String($0) }
    return nGram(with: array, n: n)
}

func wordNGram(with text: String, n: Int) -> [String] {
    let array = text.split(separator: " ").map { String($0) }
    return nGram(with: array, n: n)
}

let firstText = "paraparaparadise"
let secondText = "paragraph"

let X = characterNGram(with: firstText, n: 2)
let Y = characterNGram(with: secondText, n: 2)

let sum = Set(X).union(Y)
print(sum)

let product = Set(X).intersection(Y)
print(product)

let difference = Set(X).symmetricDifference(Y)
print(difference)

print("X has 'se': ", X.contains("se"))
print("Y has 'se': ", Y.contains("se"))
