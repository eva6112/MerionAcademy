import Foundation

//enum Optional{
//    case none = nil
//    case some
//}

//есть значение и оно булевое
var someBool: Bool = true
//не факт
var someOtherBool: Bool? = nil

//print(someBool)
//print(someOtherBool ?? <#default value#>)
//someOtherBool = true
//print(someOtherBool)

//MARK: - nil coalescing operator (оператор сравнения по нил)

var newBool1: Bool? = someOtherBool
//в неопциональьном типе, когда пустота, мы кладем дефолтное значение
var newBool2: Bool = someOtherBool ?? false
//print(newBool2)

var title: String? = "Hey, guys"
//print(title ?? "no title")

title = "How are you"
//print(title ?? "no asking")

title = nil
//print(title ?? "nothing to say")

//MARK: - развертывание опционала с помощью if -let statement (проверяем на успех)
var isUserLogedIn: Bool? = nil

@MainActor func checkUser() -> Bool{
    //если значение не nil, то присваиваем, иначе в блок элс
    if let userStatus = isUserLogedIn{
        return userStatus
    }
    else{
        print("no status")
        return false
    }
}

//var result: Bool = checkUser()
//print(result)

//MARK: - развертывание опционала, с помощью guard statement (проверяем на неуспех)
@MainActor func checkUser2() -> Bool{
    guard let userStatus = isUserLogedIn else{
        print("no status")
        return false
    }
    return userStatus
}

//var result: Bool = checkUser2()
//print(result)

//MARK: - complex if -let statemet
var userLovesCoffee: Bool? = true
var userCanDrink: Bool? = true

func checkUserAbility(userLovesCoffee: Bool, userCanDrink: Bool) -> Bool{
    if userLovesCoffee == true && userCanDrink == true{
        return true
    }
    return false
}

@MainActor func checkWithData() -> Bool{
    if let lovesCoffee = userLovesCoffee, let canDrink = userCanDrink{
        return checkUserAbility(userLovesCoffee: lovesCoffee, userCanDrink: canDrink)
    }
    return false
}

//var result: Bool = checkWithData()
//print(result)

//MARK: - complex guard -let statement
var userLovesTea: Bool? = true
var userCanDrinkTea: Bool? = nil

func checkUserTeaStatus(userLovesTea: Bool, userCanDrinkTea: Bool) -> Bool{
    if (userLovesTea == true && userCanDrinkTea == true){
        print("pour it to him")
        return true
    }
    print("he doesn`t want")
    return false
}

@MainActor func checkUserTeaStatusData() -> Bool{
    guard let lovesTea = userLovesTea,
          let canDrink = userCanDrinkTea else{
        print("maybe he doesn`t want")
        return false
    }
    return checkUserTeaStatus(userLovesTea: lovesTea, userCanDrinkTea: canDrink)
}

//var result = checkUserTeaStatusData()
//print(result)

//MARK: - опциональная последовательность
func getName() -> String?{
    return "eva"
}

func getTitle() -> String{
    return "tytle"
}

func getData(){
    let userName: String? = getName()
    let countSymbols = userName?.count
    
    let curTitle: String = getTitle()
    let countTitle = curTitle.count
    
    let firstLetter = userName?.first?.lowercased()
}

//MARK: - принудительное развертывание опционала
func getName2() -> String?{
    return "eva"
}

func getData2() -> Int{
    let name: String? = getName2()
    let countName: Int = name!.count
    return countName
}

print(getData2())
