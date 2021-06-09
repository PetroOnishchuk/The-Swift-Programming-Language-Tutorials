import UIKit

var greeting = "Hello, playground"

struct User {
    var firstName: String
    var secondName: String
    
    var fullName: String {
       
              "\(firstName) \(secondName)"
    }
}

let firstUser = User(firstName: "Den", secondName: "Wilson")
firstUser.fullName


struct Length {
    var kilometer: Double
    
    var meter: Double {
        get {
            return kilometer * 1000
        }
        set {
            kilometer = (newValue / 1000)
        }
    }
    
    var centimeter: Double {
        get {
            return kilometer * 100000
        }
        set {
            kilometer = (newValue / 100000)
        }
    }
    
    var mile: Double {
        get {
            return kilometer * 0.621371
        }
        set {
            kilometer = (newValue / 0.621371)
        }
    }
    
    var yard: Double {
        get {
            return kilometer * 1093.61
        }
        set {
            kilometer = (newValue / 1093.61)
        }
    }
}

var travelLength = Length(kilometer: 10)
travelLength.kilometer
travelLength.meter
travelLength.centimeter
travelLength.mile
travelLength.yard

travelLength.centimeter = 1000

travelLength.kilometer
travelLength.meter
travelLength.centimeter
travelLength.mile
travelLength.yard
