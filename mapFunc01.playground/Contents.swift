import UIKit

var greeting = "Hello, playground"

// map

let shippingYears = ["015", "016", "017", "018", "019", "020"]

let correctYears = shippingYears.map { year in
    "2" + year
}


var testingArray = [String]()

for year in shippingYears {
    testingArray.append("2" + year)
}

let secondCorrectYears = shippingYears.map { "2" + $0 }


//print("correctYears: \(correctYears)")
//print("testingArray: \(testingArray)")
//print("secondCorrectYears: \(secondCorrectYears)")
 
// compactMap

let houseNumbers = ["22", "105", "1o", "44", "50"]

let correctHouseNumbers = houseNumbers.compactMap { number in
    Int(number)
}

let secondHouseNumbers = houseNumbers.map { Int($0) }

print("correctHouseNumbers: \(correctHouseNumbers)")
print("secondHouseNumbers: \(secondHouseNumbers)")




// flatMap


let similarHouseNumber = houseNumbers.flatMap { number in
    Int(number)
}

let flattestArray = [shippingYears, houseNumbers].compactMap { array in
    array.compactMap { number in
        Int(number)
    }
}.flatMap {$0}

print("similarHouseNumber: \(similarHouseNumber)")
print("flattestArray: \(flattestArray)")
