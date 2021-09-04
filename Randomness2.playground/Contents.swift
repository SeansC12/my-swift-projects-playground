import UIKit

//Number Guessing Game

func rng(startno : Int, endno : Int) -> Int { //function creates a random number for actual number
    let randomno = Int.random(in: startno...endno)
    
    return randomno
}

func rngFindingClueMethod() -> Int { //function finds what method the clue is expressed
    let randomno = Int.random(in: 1...2)
    
    return randomno
}

func randomNumberSmallerThanInput(result : Double) -> String { //function if actual number smaller than rng
    for x in stride (from : 10, to : 0, by : -0.1) {
        if result >= x {
            let inverse = Double(floor(1/x * 10) / 10)
            return "The actual number is approximately \(inverse) of your number"
        }
    }
    return "1 Nothing found for \(result)"
}

func randomNumberLargerThanInput(result : Double) -> String { //function if actual number larger than rng
    if randomnumber .isMultiple(of: UserGuessedNo) {
        return "The actual number was \(randomnumber / UserGuessedNo) times your number"
    } else {
        let fractiondiff : Double = round((Double(randomnumber) / Double(UserGuessedNo)) * 100) / 100
        return "The actual number was \(fractiondiff) times your number"
    }
    
}

//create a for loop to check if actual number is a perfect multiple of chosen no.
var UserGuessedNo = 10
let randomnumber = rng(startno: 1, endno: 10) //generated number

func main() {
    var DidYouGetItRight : String! = "No answer"
    print("Input number: \(UserGuessedNo) random number: \(randomnumber)")
    if UserGuessedNo > 10 {
        DidYouGetItRight = "Invalid number"
    } else {
        if UserGuessedNo == randomnumber {
            DidYouGetItRight = "Omg you did it...hacking prob" //if number guessed == number generated
        } else {
            if rngFindingClueMethod() == 1 { //if method of clue expression = "how much off"
                let differenceplusminus : Int = UserGuessedNo - randomnumber // diff +-
                DidYouGetItRight = "You were \(abs(differenceplusminus)) off...so close" // dc
            } else {
                let differencetimesdivide : Double = Double(UserGuessedNo) / Double(randomnumber)//diff */ created
                
                if differencetimesdivide > 1 {
                    DidYouGetItRight = randomNumberSmallerThanInput(result : differencetimesdivide)//smaller than rng
                } else {
                    DidYouGetItRight = randomNumberLargerThanInput(result : differencetimesdivide)//larger than rng
                }
            }
        }
    }
    
    print(DidYouGetItRight!)
}


for number in 1...10 {
    UserGuessedNo = number
    main()
}

