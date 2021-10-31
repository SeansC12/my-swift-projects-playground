//
//  ResultViewController.swift
//  GuessTheNumber
//
//  Created by SEAN ULRIC BUGUINA CHUA stu on 8/9/21.
//

import UIKit

class ResultViewController : UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var message : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = message
        // Do any additional setup after loading the view.
        print(message)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
