import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"])

var cal1: [String] = []
for content in array {
    if content.count > 0 {
        cal1.append(content.components(separatedBy: "\t")[0])
    }
}
try! cal1.joined(separator: "\n").write(toFile: "col1.txt", atomically: true, encoding: .utf8)

var cal2: [String] = []
for content in array {
    if content.count > 0 {
        cal2.append(content.components(separatedBy: "\t")[1])
    }
}
try! cal2.joined(separator: "\n").write(toFile: "col2.txt", atomically: true, encoding: .utf8)