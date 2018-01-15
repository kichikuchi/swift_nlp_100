import Foundation

var path = Bundle.main.path(forResource: "col1", ofType: "txt")!
let col1 = try! String(contentsOfFile: path)
let col1Array = col1.components(separatedBy: ["\n"])

path = Bundle.main.path(forResource: "col2", ofType: "txt")!
let col2 = try! String(contentsOfFile: path)
let col2Array = col2.components(separatedBy: ["\n"])

var original = ""
for i in 0..<col1Array.count {
    let col1content = col1Array[i]
    let col2content = col2Array[i]
    original += "\(col1content)\t\(col2content)\n"
}
print(original)