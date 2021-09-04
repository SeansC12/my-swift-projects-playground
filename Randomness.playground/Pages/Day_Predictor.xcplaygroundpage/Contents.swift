import Foundation
import UIKit

//Day predictor, are you going to have a good day, or a bad one?

func rng(startno : Int, endno : Int) -> Int{
    let randomno = Int.random(in: startno...endno)
 return randomno
}

let randomnumber = rng(startno: 1, endno: 10)
var day : String

if randomnumber >= 1 && randomnumber <= 5 {
    day = "You are having a really bad day!"
} else if randomnumber >= 6 && randomnumber <= 9 {
    day = "You are having a normal day ;-;"
} else {
    day = "Wow you are having such a good day"
}

print(day)


