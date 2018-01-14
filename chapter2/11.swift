import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

print("original: ", content)
print("replaced: ", content.replacingOccurrences(of: "\t", with: " "))