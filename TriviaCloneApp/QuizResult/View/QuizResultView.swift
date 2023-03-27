//
//  QuizResultView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 20.03.2023.
//

import UIKit
import Charts

class QuizResultView: UIViewController, ChartViewDelegate, QuizResultViewProtocol  {
    var quizResultPresenter: QuizResultPresenterProtocol?
    
    
    @IBOutlet weak var pieChartView: UIView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var returnButton: UIButton!
    
    private var pieChart: PieChartView = PieChartView()
    
    var quizLengthValue: Int? = nil
    var correctAnswerValue : Int? = nil
    var incorrectAnsertValue : Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard quizLengthValue != nil else {return}
        guard correctAnswerValue != nil else {return}
        guard incorrectAnsertValue != nil else {return}
        self.navigationItem.hidesBackButton = true
        configureButtons()
        configureBarChart()
        configureLabels()

        // Do any additional setup after loading the view.
    }
    
    private func configureLabels(){
        labelOne.text = "Total  questions: \(quizLengthValue!)"
        labelTwo.text = "Correct answers: \(correctAnswerValue!)"
        labelThree.text = "Incorrect answers: \(incorrectAnsertValue!)"
    }
    
    private func configureBarChart() {
        pieChart.delegate = self
        pieChartView.backgroundColor = .clear
        pieChartView.layer.cornerRadius = TRadiusConstants.textFieldCornerRadius
        pieChartView.clipsToBounds = true
        guard let secondaryColor = UIColor(named: "SecondaryColor") else {return}
        pieChart.legend.textColor = secondaryColor
        pieChart.chartDescription.textColor = .blue // Grafik açıklaması
       
        var entities : [PieChartDataEntry] = []
        
        entities.append(PieChartDataEntry(value: Double(correctAnswerValue!), label: "Correct Answer"))
        entities.append(PieChartDataEntry(value: Double(incorrectAnsertValue!), label: "Incorrect Answer"))
        let set = PieChartDataSet(entries: entities)
        set.colors = ChartColorTemplates.pastel()
        let data = PieChartData(dataSet: set)
        pieChart.data = data
        data.setDrawValues(true)

        
        pieChart.isUserInteractionEnabled = false
        pieChart.frame = CGRect(x: 0, y: 0, width: pieChartView.frame.size.width - 10, height: pieChartView.frame.size.height - 10 )
        pieChart.center = pieChartView.center
        pieChartView.addSubview(pieChart)
    }
    
    private func configureButtons(){
        returnButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        returnButton.clipsToBounds = true
        returnButton.setTitle("Go Create Quiz", for: .normal)
    }
    
    
   
    
    
    @IBAction func returnButtonPressed(_ sender: UIButton) {
        
        quizResultPresenter?.goToHomeP()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
