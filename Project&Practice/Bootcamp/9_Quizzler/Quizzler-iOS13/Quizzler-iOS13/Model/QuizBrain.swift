//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 강주원 on 2021/06/28.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber = 0
    var quizScore = 0
    
    //아랫줄에서 answer은 external parameter, 함수 외부에서 사용할 수 있음
    //userAnswer는 internal parameter, 이 함수 안에서 사용할 수 있음
    //만약 external parameter name을 사용하지 않을거라면 '_'으로 대신하면 된다.
    //func checkAnswer(_ userAnswer: String)와 동일
    mutating func checkAnswer(correctAnswer userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            //user got it right
            quizScore += 1
            return true
        } else {
            //user got it wrong
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswerSheet(buttonNumber : Int) -> String{
        if buttonNumber == 0 {
            return quiz[questionNumber].answer[0]
        } else if buttonNumber == 1 {
            return quiz[questionNumber].answer[1]
        } else {
            return quiz[questionNumber].answer[2]
        }
        
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            quizScore = 0
            questionNumber = 0
        }
    }
    
    func getScore() -> Int {
        return quizScore
    }
    
}
