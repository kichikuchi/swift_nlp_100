func template(_ x: Int, _ y: String, _ z: Double) -> String {
    return "\(x)時の\(y)は\(z)"
}

let templateText = template(12, "気温", 22.4)
print(templateText)