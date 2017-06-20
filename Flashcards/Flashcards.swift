//
//  Flashcards.swift
//  Flashcards
//
//  Created by iD Student on 6/20/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import Foundation

class Flashcard{
    var question : String
    var options : [String]
    var answer : String
    init(_ question: String, _ options: [String]){
        self.question = question
        self.options = options
        self.answer = options[0]
    }
}

class CardCollection{
    public static var instance : CardCollection = CardCollection()
    //Still a public variable, but it can't be shifted or changed by anyone.
    public private(set) var cards : [Flashcard]
    public private(set) var currentIndex : Int
    public var currentCard : Flashcard{
        get{
            return cards[currentIndex]
        }
    }
    private init(){
        cards = [
            Flashcard( "Test Question", ["True", "False"]),
            Flashcard( "What does NES stand for?", ["Nintendo Entertainment System", "Nintendo Electronics System", "No Meaning"]),
            Flashcard( "The European Organization for Nuclear Research is knwon by what four letter acronym?", ["CERN", "EUNC", "NDofEU"]),
            Flashcard( "How many Olympic Games have been hosted in Africa?", ["0", "10", "15"]),
            Flashcard("How many carbons are in ethanol?", ["2", "1", "5"])
        ]
            currentIndex = 0
        
    }
    public func NextQuestion(){
        currentIndex += 1
            if(currentIndex >= cards.count){
                currentIndex = 0
        }
    }
    public func CheckAnswer( _ selectedAnswer : Int) -> Bool {
        var isCorrect = currentCard.options[selectedAnswer] == currentCard.answer
        return isCorrect
        }
    }


    
