//
//  ViewController.swift
//  MultipleChoice
//
//  Created by Ash, Aurora on 2019-12-05.
//  Copyright © 2019 Rori Ash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Properties
    
    //UITextFields
    @IBOutlet weak var NumberOfQuestions: UITextField!
    @IBOutlet weak var StudentAnswers: UITextField!
    @IBOutlet weak var CorrectAnswers: UITextField!
    //Labels
    @IBOutlet weak var NumberOfQuestionsLabel: UILabel!
    @IBOutlet weak var StudentAnswersLabel: UILabel!
    @IBOutlet weak var CorrectAnswersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Check Answers Button
    @IBAction func CheckAnswers(_ sender: Any) {
        
        
        let NumberOfQuestionsAsInt = Int (NumberOfQuestions.text!)
        
        guard let user = NumberOfQuestions
            else { NumberOfQuestionsLabel.text = "Please enter an integer greater than 0"
                return
        }
        guard let student = StudentAnswers.text, student.count == NumberOfQuestionsAsInt
            else {
                StudentAnswersLabel.text = "The number of student answers must be the same as the number of questions."
                return
        }
        guard let correct = CorrectAnswers.text, correct.count == NumberOfQuestionsAsInt
            else {
                CorrectAnswersLabel.text = "The number of correct answers must be the same as the number of questions and student answers."
                return
        }
    }
    
    
    
}
