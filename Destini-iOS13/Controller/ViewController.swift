//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var storyLabel: UILabel!

    
    var myStory = StoryLine()
    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = myStory.stories[myStory.storyNum].story
        choiceOne.setTitle(myStory.stories[myStory.storyNum].choice1, for: .normal)
        choiceTwo.setTitle(myStory.stories[myStory.storyNum].choice2, for: .normal)

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAns = sender.currentTitle!
        
        //nextStoryLine base on user ans
        myStory.nextStoryLine(userAns)
        
        let nextQuestion = myStory.getStoryLine()
        let first = myStory.getFirstChoice1()
        let second = myStory.getFirstChoice2()
        
        storyLabel.text = nextQuestion
        choiceOne.setTitle(first, for: .normal)
        choiceTwo.setTitle(second, for: .normal)
    
    }
    
}

