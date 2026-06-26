import Foundation

//МАССИВЫ
var fruits : [String] = []
fruits.append("banana")
fruits.append("apple")
fruits.append("orange")
//print(fruits.sorted())

var cars = Array<String>()
cars.append("Audi")
cars.append("Porshe")
//print(cars.reversed())

var numbers = [String]()
numbers.append("1")
numbers.append("2")
numbers.append("3")
//print(numbers)

//СЛОВАРИ
let person : [String: String] = ["name": "Eva",
                                 "surname": "Goloschapova",
                                 "location": "Tomsk"]
//print(person["location", default: "no location"])

let inPlace : [String: Bool] = ["John": true,
               "Patric": false,
               "Linda": true]

var height = [String: Int]()
height["John"] = 180
height["Patric"] = 170
height["Linda"] = 160
//print(height)

//МНОЖЕСТВА
var epochsMusic : Set<String> = ["1980", "1990", "2000"]
epochsMusic.insert("2010")
print(epochsMusic)
