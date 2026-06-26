import Foundation

for i in 0...100
{
    //print("операция применена \(i) раз")
}

let names: [String] = ["Vova", "Max", "Anya", "Katya"]
var femaleNames: [String] = []

for name in names{
    //print(name)
    if name == "Anya" || name == "Katya"{
        femaleNames.append(name)
    }
}

//print(femaleNames)

let story1: Bool = true
let story2: Bool = true
let story3: Bool = false
let story4: Bool = false
var stories: [Bool] = [story1, story2, story3, story4]

for (ind, story) in stories.enumerated(){
    if ind == 0{
        continue
    }
    //print("index: \(ind) story is \(story)")
    
    if ind == 2{
        break
    }
}

var currentLevel: Int = 0
let finalLevel: Int = 9
while currentLevel <= finalLevel{
    var notDone = finalLevel - currentLevel
    print("Вы проши уровень №\(currentLevel), вам осталось \(notDone)")
    currentLevel+=1
}
