// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let quizMultiple = try? JSONDecoder().decode(QuizMultiple.self, from: jsonData)

import Foundation

// MARK: - QuizMultiple
struct QuizMultiple: Codable, QuizProtocol {
    let responseCode: Int
    let results: [Result]

    enum CodingKeys: String, CodingKey {
        case responseCode = "response_code"
        case results
    }
}

// MARK: - Result
struct Result: Codable {
    let category: qCategory
    let type: TypeEnum
    let difficulty: Difficulty
    let question, correctAnswer: String
    let incorrectAnswers: [String]

    enum CodingKeys: String, CodingKey {
        case category, type, difficulty, question
        case correctAnswer = "correct_answer"
        case incorrectAnswers = "incorrect_answers"
    }
}

enum qCategory: String, Codable {
    case entertainmentBooks = "Entertainment: Books"
    case generalKnowledge =  "General Knowledge"
    case entertainmentFilm = "Entertainment: Film"
    case entertainmentMusic = "Entertainment: Music"
    case entertainmentMusicalTheatres = "Entertainment: Musical & Theaters"
    case entertainmentTelevision = "Entertainment: Television"
    case entertainmentVideoGames = "Entertainment: Video Games"
    case entertainmentBoardGames = "Entertainment: Board Games"
    case scienceNature = "Science & Nature"
    case scienceComputers = "Science: Computers"
    case scienceMathematics = "Science: Mathematics"
    case mythology = "Mythology"
    case sport = "Sports"
    case geography = "Geography"
    case history = "History"
    case politics = "Politics"
    case art = "Art"
    case celebrities = "Celebrities"
    case animals = "Animals"
    case vehicles = "Vehicles"
    case entertainmentComics = "Entertainment: Comics"
    case scienceGadged = "Science : Gadgets"
    case entertainmentManga = "Entertainment: Anime & Manga"
    case entertainmentCartoonAnimations = "Entertainment: Cartoon & Animations"
}

enum Difficulty: String, Codable {
    case medium = "medium"
    case easy = "easy"
    case hard = "hard"
}

enum TypeEnum: String, Codable {
    case multiple = "multiple"
}
