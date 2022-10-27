let range = Int(CommandLine.arguments[1]) ?? 0
var dataSet = (0..<range).map { _ in Int.random(in: 1..<1000) }

func selectionSort(array: [Int]) -> [Int] {
    var data = array
    
    for i in 0..<(data.count-1) {
        var key = i
        
        for j in i+1..<data.count where (data[j] < data[key]) {
            key = j
        }
        
        guard i != key else { continue }
        
        data.swapAt(i, key)
    }
    
    return data
}        

//print(selectionSort( array: dataSet))