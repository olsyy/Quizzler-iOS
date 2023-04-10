import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Constant and variable names can contain whitespace characters", a: "False"),
        Question(q: "You declare constants without keyword", a: "False"),
        Question(q: "You declare variable with the var keyword", a: "True"),
        Question(q: "Single-line comments begin with two forward-slashes (//)", a: "True"),
        Question(q: "Unsigned integer can be only positive numbers or zero", a: "False"),
        Question(q: "You a;ways need to pick a specific size of integer (Int64 or Int32) ", a: "False"),
        Question(q: "Double is preferef for floating-point-numbers in your code", a: "True"),
        Question(q: "Swift is a type-safe language", a: "True"),
        Question(q: "Swift provides two Boolean constant: 1 and 0", a: "False"),
        Question(q: "Tuples group multiple values with the same type into a single compound value.", a: "False"),
        Question(q: "The special value of optional type is void", a: "False"),
        Question(q: "Char is a keyword for single symbol type", a: "False")
    ]
    var questionNumber = 0
    
    func checkAnswer(_  userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
