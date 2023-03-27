//
//  QuizCheckPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation


class QuizCheckPresenter : QuizCheckPresenterProtocol {
    var quizCheckView: QuizCheckViewProtocol?
    
    var quizCheckInteractor: QuizCheckInteractorProtocol?
    
    var quizCheckRouter: QuizCheckRouterProtocol?
    
    func getComponents(quiz: Quiz) {
        quizCheckView?.showQuiz(quiz: quiz)
    }
    
    func initGetComponents() {
        quizCheckInteractor?.getComponents()
    }
   
    func initQuizCheck(quiz : Quiz) {
        quizCheckInteractor?.createQuiz(handler: {
            
        }, quiz: quiz)
    }
    func createQuizCheck(questions: [Question], isBoolean: Bool,result : Bool) {
        quizCheckView?.createQuiz(questions: questions, isBoolean: isBoolean,result: result)
    }
    
    func goToQuizMultipleP(question : [Question]) {
        guard let safeView = quizCheckView else {return}
        quizCheckRouter?.goToQuizMultiple(question: question, viewName: safeView)
    }
    func goToQuizBooleanP(question: [Question]) {
        guard let safeView = quizCheckView else {return}
        quizCheckRouter?.goToQuizBoolean(question: question, viewName: safeView)
    }
    
    
    
}
