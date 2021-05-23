//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    let story : String
    let choice1 : String
    let choice2: String
    let choiceDestination1: Int
    let choiceDestination2: Int
    
    init(title:String,choice1:String,choice1Destination: Int,choice2:String,choice2Destination:Int){
        story = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.choiceDestination1 = choice1Destination
        self.choiceDestination2 = choice2Destination
    }
}
