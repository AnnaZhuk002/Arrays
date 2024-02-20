import Foundation

// days
let daysInMonths: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
// names
let monthsNames: [String] = [
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
]

// generate list of tuples
var monthsDays: [(String, Int)] = []
for tpl in zip(monthsNames, daysInMonths) {
    monthsDays.append(tpl)
}

// dates only
for numberOfDays in daysInMonths {
    print(numberOfDays)
}

print()

// two arrays
for (name, numberOfDays) in zip(monthsNames, daysInMonths) {
    print("\(name) \(numberOfDays)")
}

print()

// array of tuples
for (name, numberOfDays) in monthsDays {
    print("\(name) \(numberOfDays)")
}

print()

// reversed
for (name, numberOfDays) in monthsDays.reversed() {
    print("\(name) \(numberOfDays)")
}

print()

let data: (String, Int) = ("February", 1) //("October", 8)

var daysToDate: Int = data.1 - 1 // because "before specified day"
for (name, numberOfDays) in monthsDays {
    if data.0 == name {
        break
    }
    daysToDate += numberOfDays
}

print("The number of days until \(data.0) \(data.1) from the begining of the year is \(daysToDate)")
