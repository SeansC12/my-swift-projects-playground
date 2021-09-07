import UIKit

let rng = Rng()

var UserGuessedNo = 10
let randomnumber = rng.randomize(startno: 1, endno: 10) //generated number

func main() {
    let bigNumFinder = BigNumFinder()
    var DidYouGetItRight : String! = "No answer"
    
    print("Input number: \(UserGuessedNo) random number: \(randomnumber)")
    let smallNumFinder = SmallNumFinder(randomNumber : randomnumber)
    if UserGuessedNo > 10 {
        DidYouGetItRight = "Invalid number"
    } else {
        if UserGuessedNo == randomnumber {
            DidYouGetItRight = "Omg you did it...hacking prob" //if number guessed == number generated
        } else {
            if rng.rngFindingClueMethod() == 1 { //if method of clue expression = "how much off"
                let differenceplusminus : Int = UserGuessedNo - randomnumber // diff +-
                DidYouGetItRight = "You were \(abs(differenceplusminus)) off...so close" // dc
            } else {
                let differencetimesdivide : Double = Double(UserGuessedNo) / Double(randomnumber)
                
                if differencetimesdivide > 1 {
                    DidYouGetItRight = bigNumFinder.find(result : differencetimesdivide)
                } else {
                    DidYouGetItRight = smallNumFinder.find(UserGuessedNo: UserGuessedNo)
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

