//
//  ViewController.swift
//  Counter
//
//  Created by Fedor on 17.10.2023.
//

import UIKit

class ViewController: UIViewController {
    //Создаем Outlet для текстовойго поля
    @IBOutlet weak var countLabel: UILabel!
    
    //Создаем переменную контроля показаниясчетчика
    var count = 0
    
    //Создаем Outlet для кнопки счетчика + 1
    @IBOutlet weak var incrementCountButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Округляем углы кнопки incrementCountButton
        incrementCountButton.layer.cornerRadius = 15
        
        //Обновляем значени текстового поля countLabel
        updateCountLabel()
    }

    //Создаем функцию обновляющую значение текстового поля countLabel
    func updateCountLabel (){
        countLabel.text = "Значение\nсчётччика:\n\(count)"
    }
    
    //Описываем функцию увеличения значения счетчика при нажатии на кнопку incrementCountButton на 1
    @IBAction func incrementCount(_ sender: Any) {
        count += 1
        updateCountLabel()
    }
    
}

