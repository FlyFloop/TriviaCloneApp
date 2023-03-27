//
//  QuizCheckInteractor.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation
import UIKit


class QuizCheckInteractor : QuizCheckInteractorProtocol {
  
    
    var quizCheckPresenter: QuizCheckPresenterProtocol?
   
    func getComponents() {
        do {
            guard let safeSelectedCategory = UserDefaults.standard.object(forKey: TUserDefaultsStringsConstants.categoryKey) as? Data else {return}
            let decoder = JSONDecoder()
            let category = try decoder.decode(Category.self, from: safeSelectedCategory)
            
            guard let safeSelectedType = UserDefaults.standard.string(forKey: TUserDefaultsStringsConstants.selectedTypeKey) else {return}
            guard let safeQuestionNumber = UserDefaults.standard.string(forKey: TUserDefaultsStringsConstants.questionNumberKey) else {return}
            guard let safeDifficulty = UserDefaults.standard.string(forKey: TUserDefaultsStringsConstants.difficultyKey) else {return}
            
            let quiz = Quiz(selectedCategory: category, questionNumber: safeQuestionNumber, selectDifficulty: safeDifficulty, selectedType: safeSelectedType )
            
            quizCheckPresenter?.getComponents(quiz: quiz)
        } catch {
            print("quiz check interactor get components error")
        }
        
    }

    func createQuiz(handler :@escaping () -> (),quiz : Quiz) {
        var type = "multiple"
        var isBoolean = false
        if quiz.selectedType == "True/False"{
            type = "boolean"
            isBoolean = true
        }
       
        let urlString = "https://opentdb.com/api.php?amount=\(quiz.questionNumber)&category=\(quiz.selectedCategory.categoryId)&difficulty=\(quiz.selectDifficulty.lowercased())&type=\(type)"

        guard let safeUrl = URL(string: urlString) else {return}
        let urlRequest = URLRequest(url: safeUrl)
        let urlTask = URLSession.shared.dataTask(with: urlRequest) { data, urlResponse, error in
            if error != nil {
                print("creating quiz error")
            }
            guard let urlHttpResponse = urlResponse as? HTTPURLResponse else {return}

            do{
                guard let safeData = data else {return}
                var result = true
                let jsonDecoder = JSONDecoder()
                var decodedData :  QuizProtocol? = nil
                
                if isBoolean {
                    
                     decodedData = try jsonDecoder.decode(QuizBoolean.self, from: safeData)
                    guard let safeDecodedData = decodedData as? QuizBoolean else {return}
                
                    if safeDecodedData.responseCode == 1 {
                        result = false
                    }
                    var questions : [Question] = []
                    safeDecodedData.results.forEach { r in
                   
                        let question = Question(questionNumber: nil, questionDescription: r.question, questionCorrectAnswer: r.correctAnswer.rawValue, questionIncorrectAnswers: nil)
                    
                        questions.append(question)
                        
                    }
                    self.quizCheckPresenter?.createQuizCheck(questions: questions, isBoolean: isBoolean, result: result)
                }
                else{
                    decodedData = try jsonDecoder.decode(QuizMultiple.self, from: safeData)
                    guard let safeDecodedData = decodedData as? QuizMultiple else {return}
                    if safeDecodedData.responseCode == 1 {
                        result = false
                    }
                    
                    var questions : [Question] = []
                    safeDecodedData.results.forEach { r in
                    
                        let question = Question(questionNumber: nil, questionDescription: r.question, questionCorrectAnswer: r.correctAnswer, questionIncorrectAnswers: r.incorrectAnswers)
                        
                        questions.append(question)
                        
                    }
                    
            
                    self.quizCheckPresenter?.createQuizCheck(questions: questions, isBoolean: isBoolean,result: result)
      
                }
                
            } catch {
                print("create quiz error")
          
                print(error.localizedDescription)
               
            }
        }
        urlTask.resume()
        
    }
    
}
