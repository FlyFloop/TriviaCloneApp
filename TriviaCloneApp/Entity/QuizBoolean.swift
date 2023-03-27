// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let quizBoolean = try? JSONDecoder().decode(QuizBoolean.self, from: jsonData)

import Foundation

// MARK: - QuizBoolean
struct QuizBoolean: Codable, QuizProtocol {
    let responseCode: Int
    let results: [qResult]

    enum CodingKeys: String, CodingKey {
        case responseCode = "response_code"
        case results
    }
}

// MARK: - Result
struct qResult: Codable {
    let category: String
    let type: qTypeEnum
    let difficulty: Difficulty
    let question: String
    let correctAnswer: qCorrectAnswer
    let incorrectAnswers: [qCorrectAnswer]

    enum CodingKeys: String, CodingKey {
        case category, type, difficulty, question
        case correctAnswer = "correct_answer"
        case incorrectAnswers = "incorrect_answers"
    }
}



enum qCorrectAnswer: String, Codable {
    case correctAnswerFalse = "False"
    case correctAnswerTrue = "True"
}

enum qTypeEnum: String, Codable {
    case boolean = "boolean"
}
