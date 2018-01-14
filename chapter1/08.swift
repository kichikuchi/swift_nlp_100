func detectLowerCharacter(_ input: Character) -> Bool {
    return input >= "a" && input <= "z"
}

func cipher(_ input: String) -> String {
    let ciphered = input.flatMap { (chr) -> [String] in
        if chr >= "a" && chr <= "z" {
            return [String(UnicodeScalar(219 - chr.unicodeScalars.first!.value)!)]
        } else {
            return [String(chr)]
        }
    }
    
    return ciphered.reduce("", +)
}

let input = "HogeFugaPiyo"
print("オリジナルテキスト", input)

let ciphered = cipher(input)
print("暗号化: ", ciphered)

print("復号化: ", cipher(ciphered))