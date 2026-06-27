import Foundation

func getGreet(){
    print("hello")
}
//getGreet()
var copyGreet: () ->  Void = getGreet
//copyGreet()

//замыкание - клоужэр, безымянный блок кода
let greeting = {
    print("hello")
}
//greeting()

var userName = {(name: String) -> String in
    "hello, dear \(name)"
}
//print(userName("eva"))

func getData(id: Int) -> String{
    if id <= 399{
        return "no"
    }
    return "yes"
}
var copyData: (Int) -> (String) = getData
//print(copyData(400))
//print(getData(id: 200))

let payment = {(name: String) in
    print("Please pay the bill, \(name)")
}
//var res: Void = payment("You")

let payment2 = {(name: String) -> String in
    return "pay, \(name)"
}
var res2 = payment2("you")
//print(res2)

let payment3 = {() -> String in
    return "pay the bill immediately"
}
//print(payment3())

let team = ["Bob", "Tom", "Alex", "Jared"]
func captainFirstSort(name1: String, name2: String) -> Bool{
    if name1 == "Jared"{
        return true
    }
    if name2 == "Jared"{
        return false
    }
    return name1 < name2
}

//let normalSorting = team.sorted(by: captainFirstSort)
//print(normalSorting)

let normalSorting = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Jared"{
        return true
    }
    if name2 == "Jared"{
        return false
    }
    return name1 < name2
}
)
print(normalSorting)
