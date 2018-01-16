import Foundation

func waitReadLine() -> Int {
    guard
        let input = readLine(),
        let count = Int(input)
    else {
        print("Please enter number")
        return 0
    }
    
    return count
}

let path = Bundle.main.path(forResource: "hightemp", ofType: "txt")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"])

print("Please enter line count: ")
let input = waitReadLine()

var resultArray: [String] = []
for i in 0..<input {
    resultArray.append(array[i])
}
print(resultArray.joined(separator: "\n"))
