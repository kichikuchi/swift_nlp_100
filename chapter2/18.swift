import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"])

var row: [[String]] = []
for content in array {
    if content.count > 0 {
        row.append(content.components(separatedBy: "\t"))
    }
}

let sorted = row.sorted { $0[2] < $1[2] }.map { $0.joined(separator: "\t")}
print(sorted.joined(separator: "\n"))