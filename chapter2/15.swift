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

let array = content.components(separatedBy: ["\n"]).filter { !$0.isEmpty }

print("Please enter line count: ")
let input = waitReadLine()

var resultArray: [String] = []
for i in 0..<input {
    resultArray.insert(array.reversed()[i], at: 0)
}
print(resultArray.joined(separator: "\n"))
