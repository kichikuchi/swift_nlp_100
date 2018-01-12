import Foundation

let text = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
let countArray = text.split(separator: " ").map { $0.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: ".", with: "").count }
print(countArray)
