let policeCar = "パトカー"
let taxi = "タクシー"

var merged: [Character] = []
for i in 0..<4 {
    merged.append(Array(policeCar)[i])
    merged.append(Array(taxi)[i])
}

print(String(merged))
