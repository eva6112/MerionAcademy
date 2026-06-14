import UIKit

let name = "John"
let age = 25
let description = "My name is \(name) and my age is \(age)"
//print(name, age, description)

var number = 13
let someText: String = "футболист под номером " + String(number) + " дисквалифицирован"
//print(someText)

let calculating: String = "5 * 5 is \(5*5)"
//print(calculating)

enum DaysOfWinter{
    case December
    case January
    case February
}

var selected = DaysOfWinter.January
selected = .December
//print(selected)

enum Weather{
    case sunny, windy, rainy, unknown
}

let selectedWeather = Weather.sunny

//НЕВАЛИДНО ИСПОЛЬЗОВАТЬ
//if selectedWeather == .sunny{
//    print("put on light clothes")
//}
//else if selectedWeather == .windy{
//    print("put on warm clothes")
//}
//else{
//    print("take an ummrella with you")
//}

//switch selectedWeather{
//case .sunny:
//    print("it`s sunny")
//case .windy:
//    print("it`s windy")
//case .rainy:
//    print("it`s rainy")
//case .unknown:
//    print("i don`t know")
//}

//let place: String = "Abakan"
//switch place{
//case "Moscow":
//    print("home")
//default:
//    print("not home")
//}

enum Theme{
    case dark, pink
}

let selectedTheme = Theme.pink
let colorOfBackground = selectedTheme == .dark ? "black" : "pink"
print(colorOfBackground)

let clotheOfAnna = "dress"
let colorOfAnna = clotheOfAnna == "dress" ? "black" : "grey"
print(colorOfAnna)
