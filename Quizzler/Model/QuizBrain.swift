import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which logical operator does not exist?", a: ["&&", "||", "??" ], correctAnswer: "??"),
        Question(q: "Which of these operators returns the remainder ", a: ["%", "//", "$"], correctAnswer: "%"),
        Question(q: "Which type is used for single symbole?", a: ["Char", "Symb", "Character"], correctAnswer: "Character"),
        Question(q: "Which of these is not a collection", a: ["Tuple", "Array", "Dictionary"], correctAnswer: "Tuple"),
        Question(q: "What keyword for function?", a: ["method", "func", "fun"], correctAnswer: "func"),
        Question(q: "Which of these correctly initializes a string?", a: ["var str = String()", "str = \"Some string\"", "let str: String = some string"], correctAnswer: "var str = String()"),
        Question(q: "What floating-point type is prefered?", a: ["Double", "Float", "Numeric"], correctAnswer: "Double"),
        Question(q: "How to write variables/constants correctly?", a: ["Capitalized", "Lower case", "As you wish"], correctAnswer: "Lower case"),
        Question(q: "How to write types correctly?", a: ["Capitalized", "Lower case", "As you wish"], correctAnswer: "Capitalized"),
        Question(q: "Which keyword for variables?", a: ["let", "var", "write type of it"], correctAnswer: "var")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_  userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            score += 1
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
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
