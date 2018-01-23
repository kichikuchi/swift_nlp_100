import Foundation

let path = Bundle.main.path(forResource: "jawiki-country", ofType: "json")!
let content = try! String(contentsOfFile: path)

let array = content.components(separatedBy: ["\n"]).filter { !$0.isEmpty }
let dictionarys = array.map { content -> [String: String] in 
    let data = content.data(using: .utf8)!
    return try! JSONSerialization.jsonObject(with: data, options: []) as! [String: String]
}
let uk = dictionarys.filter { $0["title"] == "イギリス" }.first!
print(uk["text"]!)