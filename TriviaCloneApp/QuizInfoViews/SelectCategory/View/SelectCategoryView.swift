//
//  SelectCategoryView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import UIKit

class SelectCategoryView: UIViewController, SelectCategoryViewProtocol {
    var selectCategoryPresenter: SelectCategoryPresenterProtocol?
    
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var selectCategoryButton: UIButton!
    
    @IBOutlet weak var selectedCategoryLabel: UILabel!
    
    @IBOutlet weak var selectCategoryDescriptionLabel: UILabel!
    
    private var selectedCategoryString : String? = nil
    private var isCategorySaved = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedCategoryLabel.text = SelectCategoryViewStringConstants.description
        nextButton.setTitle(SelectCategoryViewStringConstants.nextButton, for: .normal)
        selectCategoryButton.setTitle(SelectCategoryViewStringConstants.selectCategoryButton, for: .normal)
        selectedCategoryLabel.text = SelectCategoryViewStringConstants.selectedCategory
        configureSelectCategoryButton()
        
        selectCategoryButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        selectCategoryButton.clipsToBounds = true
        nextButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        nextButton.clipsToBounds = true
        nextButton.isEnabled = false

        // Do any additional setup after loading the view.
        
 
    }
    
    private func updateSelectedCategoryLabel(category : CategoryEnums){
        selectedCategoryString = category.description
        selectedCategoryLabel.text = "\(SelectCategoryViewStringConstants.selectedCategory) \(selectedCategoryString!)"
        selectCategoryButton.setTitle(selectedCategoryString, for: .normal)
        saveCategory(category: category)
    }
    
    private func saveCategory(category : CategoryEnums){
        selectCategoryPresenter?.beginSaveCategory(category: category)
    }
    
    func categorySaveResult(result: Bool) {
        isCategorySaved = result
        if isCategorySaved{
            nextButton.isEnabled = true
        }else{
            nextButton.isEnabled = false
        }
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        selectCategoryPresenter?.goToQuestionNumberView()
    }
    
    
    
    
    private func configureSelectCategoryButton(){
        let menu = UIMenu(title: SelectCategoryViewStringConstants.categories, children: [
            UIAction(title: CategoryEnums.generalKnowledge.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.generalKnowledge)
                
            }),
            UIAction(title: CategoryEnums.entertainmentBooks.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentBooks)
            }),
            UIAction(title: CategoryEnums.entertainmentFilm.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentFilm)
            }),
            UIAction(title: CategoryEnums.entertainmentMusic.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentMusic)
            }),
            UIAction(title: CategoryEnums.entertainmentMusicalTheatres.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentMusicalTheatres)
            }),
            
            UIAction(title: CategoryEnums.entertainmentTelevision.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentTelevision)
            }),
            UIAction(title: CategoryEnums.entertainmentVideoGames.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentVideoGames)
            }),
            UIAction(title: CategoryEnums.entertainmentBoardGames.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentBoardGames)
            }),
            UIAction(title: CategoryEnums.entertainmentManga.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentManga)
            }),
            UIAction(title: CategoryEnums.entertainmentCartoonAnimations.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentCartoonAnimations)
            }),
            UIAction(title: CategoryEnums.entertainmentComics.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.entertainmentComics)
            }),
            UIAction(title: CategoryEnums.scienceNature.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.scienceNature)
                
            }),
            UIAction(title: CategoryEnums.scienceComputers.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.scienceComputers)
            }),
            UIAction(title: CategoryEnums.scienceGadged.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.scienceGadged)
            }),
            UIAction(title: CategoryEnums.scienceMathematics.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.scienceMathematics)
            }),
            UIAction(title: CategoryEnums.mythology.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.mythology)
            }),
            UIAction(title: CategoryEnums.sports.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.sports)
            }),
            UIAction(title: CategoryEnums.geography.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.geography)
            }),
            UIAction(title: CategoryEnums.history.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.history)
            }),
            UIAction(title: CategoryEnums.politics.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.politics)
            }),
            UIAction(title: CategoryEnums.art.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.art)
            }),
            UIAction(title: CategoryEnums.celebrities.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.celebrities)
            }),
            UIAction(title: CategoryEnums.animals.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.animals)
            }),
            UIAction(title: CategoryEnums.vehicles.description, handler: { _ in
                self.updateSelectedCategoryLabel(category: CategoryEnums.vehicles)
            }),
        ])
        selectCategoryButton.menu = menu
        selectCategoryButton.showsMenuAsPrimaryAction = true
    }
    


}
