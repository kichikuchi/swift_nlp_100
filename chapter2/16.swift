import Foundation

func waitReadLine() -> Int {
    guard
        let input = readLine(),
        let count = Int(input)
    else {
        print("Please enter a number")
        return 0
    }
    
    return count
}

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

var array = content.components(separatedBy: ["\n"]).filter { !$0.isEmpty }
var count = array.count

print("Please enter line count: ")

let input = waitReadLine()

var resultArray: [[String]] = []
var components: [String] = []
while count > 0 {
    components.append(array.removeFirst())
    if components.count == input {
        resultArray.append(components)
        components.removeAll()
    }
    count -= 1
}

for components in resultArray.enumerated() {
    try! components.element.joined(separator: "\n").write(toFile: "split\(components.offset).txt", atomically: true, encoding: .utf8)
}
