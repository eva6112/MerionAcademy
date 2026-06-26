import Foundation

func getUserName(){
    let name: String = "Anna"
    print(name)
}
//getUserName()

let startYear: Int = 1994
func calculateCurrentYear() -> Int{
    let pastYears: Int = 32
    return startYear + pastYears
}
var nowIs = calculateCurrentYear()
//print(nowIs)

let isChecked: Bool = false
func yesOrNo() -> Bool{
    if isChecked == true{
        return true
    }
    else{
        return false
    }
}
let checking = yesOrNo()
//if checking == true{
//    print("Continue")
//}
//else{
//    print("Check the box")
//}

//MARK: - контроль потока
func checkUserStatus(completeLogedIn: Bool, completeCreatedProfile: Bool) -> Bool{
    if completeLogedIn == true && completeCreatedProfile == true{
        return true
    }
    else{
        return false
    }
}

func outputStatus(){
    let isLogedIn: Bool = true
    let isCreatedProfile: Bool = true
    let isDone: Bool = checkUserStatus(completeLogedIn: isLogedIn, completeCreatedProfile: isCreatedProfile)
    if isDone == true{
        print("THE ENTRANCE COMPLETED SUCCESSFULLY")
    }
    else{
        print("LOG IN OR CREATE YOUR PROFILE")
    }
}

//outputStatus()

func checkTitle(){
    let title = "First Part"
    //давайте убедимся
    guard title == "First Part" else{
        print("It`s not, what you found")
        return
    }
    print("Take this page...")
}

//checkTitle()

//MARK: - вычисляемые свойства
let number1 = 10
let number2 = 5

func calcNumbers1(value1: Int, value2: Int) -> Int{
    return value1 + value2
}

let result = calcNumbers1(value1: number1, value2: number2)
//print(result)

var calcNumbers2: Int{
    return number1 + number2
}
//print(calcNumbers2)
