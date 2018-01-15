import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"])

try! array[0].write(toFile: "col1.txt", atomically: true, encoding: .utf8)
try! array[1].write(toFile: "col2.txt", atomically: true, encoding: .utf8)