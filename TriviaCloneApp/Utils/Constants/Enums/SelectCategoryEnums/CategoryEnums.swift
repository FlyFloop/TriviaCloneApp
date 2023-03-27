//
//  CategoryEnums.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation

protocol CategoryEnumsProtocol  {
      var description: String { get }
}


enum CategoryEnums : Int, CategoryEnumsProtocol {
case generalKnowledge = 9
    case entertainmentBooks = 10
case entertainmentFilm = 11
case entertainmentMusic = 12
case entertainmentMusicalTheatres = 13
case entertainmentTelevision = 14
case entertainmentVideoGames = 15
case entertainmentBoardGames = 16

case scienceNature = 17
case scienceComputers = 18
case scienceMathematics = 19

    case mythology = 20
    case sports = 21
    case geography = 22
    case history = 23
    case politics = 24
    case art = 25
    case celebrities = 26
    case animals = 27
    case vehicles = 28
case entertainmentComics = 29
case scienceGadged = 30
case entertainmentManga = 31
case entertainmentCartoonAnimations = 32
    
    var description: String {
        switch self {
               case .generalKnowledge:
                   return "General Knowledge"
               case .entertainmentBooks:
                   return "Entertainment: Books"
               case .entertainmentFilm:
                   return "Entertainment: Film"
               case .entertainmentMusic:
                   return "Entertainment: Music"
               case .entertainmentMusicalTheatres:
                   return "Entertainment: Musical & Theaters"
               case .entertainmentTelevision:
                   return "Entertainment: Television"
               case .entertainmentVideoGames:
                   return "Entertainment: Video Games"
               case .entertainmentBoardGames:
                   return "Entertainment: Board Games"
               case .scienceNature:
                   return "Science & Nature"
               case .scienceComputers:
                   return "Science & Computers"
               case .scienceMathematics:
                   return "Science & Mathematics"
               case .mythology:
                   return "Mythology"
               case .sports:
                   return "Sports"
               case .geography:
                   return "Geography"
               case .history:
                   return "History"
               case .politics:
                   return "Politics"
               case .art:
                   return "Art"
               case .celebrities:
                   return "Celebrities"
               case .animals:
                   return "Animals"
               case .vehicles:
                   return "Vehicles"
               case .entertainmentComics:
                   return "Entertainment: Comics"
               case .scienceGadged:
                   return "Science : Gadgets"
               case .entertainmentManga:
                   return "Entertainment: Anime & Manga"
               case .entertainmentCartoonAnimations:
                   return "Entertainment: Cartoon & Animations"
               }
    }
}
