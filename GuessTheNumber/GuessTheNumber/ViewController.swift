//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by SEAN ULRIC BUGUINA CHUA stu on 7/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answerField: UITextField!
    let rng = Rng()
    var randomnumber: Int = 0
    var DidYouGetItRight : String! = "No answer"
    
    
    @IBOutlet weak var hiddenText: UILabel!
    
    @IBAction func tapScreen(_ sender: Any) {
        answerField.resignFirstResponder()
    }
    
    @IBAction func letsGoButton(_ sender: Any) {
        answerField.resignFirstResponder()
        
        let UserGuessedNo = Int(answerField.text!)!
        if UserGuessedNo == nil || UserGuessedNo > 10 {
            hiddenText.isHidden = false
        }
        
        let bigNumFinder = BigNumFinder()
        
        print("Input number: \(UserGuessedNo) random number: \(self.randomnumber)")
        let smallNumFinder = SmallNumFinder(randomNumber : self.randomnumber)
        if UserGuessedNo > 10 {
            DidYouGetItRight = "Invalid number"
        } else {
            if UserGuessedNo == self.randomnumber {
                DidYouGetItRight = "Omg you did it...hacking prob" //if number guessed == number generated
            } else {
                if rng.rngFindingClueMethod() == 1 { //if method of clue expression = "how much off"
                    let differenceplusminus : Int = UserGuessedNo - self.randomnumber // diff +-
                    DidYouGetItRight = "You were \(abs(differenceplusminus)) off...so close" // dc
                } else {
                    let differencetimesdivide : Double = Double(UserGuessedNo) / Double(self.randomnumber)
                    
                    if differencetimesdivide > 1 {
                        DidYouGetItRight = bigNumFinder.find(result : differencetimesdivide)
                    } else {
                        DidYouGetItRight = smallNumFinder.find(UserGuessedNo: UserGuessedNo)
                    }
                }
            }
        }
        performSegue(withIdentifier: "showResults", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.randomnumber = rng.randomize(startno: 1, endno: 10) //generated number
        answerField.returnKeyType = .done
        title = "Guess That Number!"
        view.backgroundColor = .systemBlue
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            let destinationViewController = segue.destination as! ResultViewController
            destinationViewController.message = self.DidYouGetItRight
        }
    }
    
}
