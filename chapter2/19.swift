import Foundation

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"])

var col: [String] = []
for content in array {
    if content.count > 0 {
        col.append(content.components(separatedBy: "\t")[0])
    }
}

var countCol: [[String]] = []
for row in col {
    let filtered = countCol.filter { $0[0] == row }
    if filtered.isEmpty {
        countCol.append([row, "1"])
    } else {
        countCol = countCol.map { content -> [String] in
            if content[0] == row {
                return [row, String(Int(content[1])! + 1)]
            } else {
                return content
            }
        }
    }
}

let sorted = countCol.sorted { Int($0[1])! > Int($1[1])! }.map { $0[0] }.joined(separator: "\n")
print(sorted)