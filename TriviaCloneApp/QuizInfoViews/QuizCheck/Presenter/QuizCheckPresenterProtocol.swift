//
//  QuizCheckPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation


protocol QuizCheckPresenterProtocol {
    var quizCheckView : QuizCheckViewProtocol? {get set}
    var quizCheckInteractor : QuizCheckInteractorProtocol? {get set}
    var quizCheckRouter : QuizCheckRouterProtocol? {get set}
    func getComponents(quiz : Quiz)
    func initGetComponents()
   
    func initQuizCheck(quiz : Quiz)
    func createQuizCheck(questions: [Question], isBoolean : Bool, result : Bool)
    func goToQuizMultipleP(question : [Question])
    func goToQuizBooleanP(question : [Question])
}
