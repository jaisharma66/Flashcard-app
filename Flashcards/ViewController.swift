//
//  ViewController.swift
//  Flashcards
//
//  Created by iD Student on 6/19/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var QuestionTextView: UITextView!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var PickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PickerView.dataSource = self
        PickerView.delegate = self
        setupCardUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupCardUI (){
        QuestionTextView.text = CardCollection.instance.currentCard.question
        QuestionLabel.text = "Question \(CardCollection.instance.currentIndex+1)"
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CardCollection.instance.currentCard.options.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CardCollection.instance.currentCard.options[row]
    }
    

}

