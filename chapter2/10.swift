import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let lines = content.components(separatedBy: "\n")
print("行数: ", lines.count - 1)
