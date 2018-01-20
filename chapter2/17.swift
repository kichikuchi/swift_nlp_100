import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"])

var cal: [String] = []
for content in array {
    if content.count > 0 {
        if !cal.contains(content.components(separatedBy: "\t")[0]) {
            cal.append(content.components(separatedBy: "\t")[0])
        }
    }
}

print(cal.joined(separator: "\n"))