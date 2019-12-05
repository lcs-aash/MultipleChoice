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
        
        guard let user = NumberOfQuestions.text
            else { NumberOfQuestionsLabel.text = "Please enter an integer greated than 0"
                return
        }
                guard let student = StudentAnswers.text
                    else {
                        StudentAnswersLabel.text = "Please be sure to enter"
                    return
                }
        }
    }
    


