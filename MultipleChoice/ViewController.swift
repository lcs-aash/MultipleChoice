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
        
        // Making number of questions into an integer
        let NumberOfQuestionsAsInt = Int (NumberOfQuestions.text!)
        
        // Integer greater than 0
        guard let user = NumberOfQuestions
            else { NumberOfQuestionsLabel.text = "Please enter an integer greater than 0"
                return
        }
        // Number of student answers = number of questions
        guard let student = StudentAnswers.text, student.count == NumberOfQuestionsAsInt
            else {
                StudentAnswersLabel.text = "The number of student answers must be the same as the number of questions."
                return
        }
        // Number of correct answers = number of questions
        guard let correct = CorrectAnswers.text, correct.count == NumberOfQuestionsAsInt
            else {
                CorrectAnswersLabel.text = "The number of correct answers must be the same as the number of questions and student answers."
                return
        }
        
        // Loop to print out each character
        for (position, singleCharacter) in student.enumerated () {
            print(singleCharacter)
        }
        for (position, singleCharacter) in correct.enumerated () {
            print(singleCharacter)
            
        }
        
        
        
    }
}


