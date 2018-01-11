let original = "パタトクカシーー"

let odd = original.enumerated().filter { $0.offset % 2 != 0 }.map { $0.element }
print(String(odd))

let even = original.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
print(String(even))
