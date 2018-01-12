import Foundation

let text = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
let dictionary = text.split(separator: " ")
        .map { $0.replacingOccurrences(of: ".", with: "") }
        .enumerated()
        .map { tuple -> [String: Int] in
            let length = [1, 5, 6, 7, 8, 9, 15, 16, 19].contains(tuple.offset + 1) ? 1 : 2
            return [String(tuple.element.prefix(length)): tuple.offset + 1]
        }
print(dictionary)
