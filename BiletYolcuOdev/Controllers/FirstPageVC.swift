//
//  FirstpageViewController.swift
//  BiletYolcuOdev
//
//  Created by Furkan Yükcü on 8.04.2023.
//

import UIKit

class FirstPageVC: UIViewController {
    
    
    @IBOutlet weak var fromLabel: UITextField!
    @IBOutlet weak var toLabel: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var todayButton: UIButton!
    @IBOutlet weak var tomorrowButton: UIButton!
    @IBOutlet weak var bookingButton: UIButton!
    
        let cities = Options().cities
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // ...
        }
        
        @IBAction func fromLabelTapped( sender: Any) {
            showCitySelection(actionFor: .to)
        }
    
    
        
        @IBAction func toLabelTapped( sender: Any) {
            showCitySelection(actionFor: .from)
        }
        
        // aksiyon sayfası veya modal açma fonksiyonu
        func showCitySelection(actionFor: CitySelectionAction) {
            let citySelectionAlert = UIAlertController(title: "Select City", message: nil, preferredStyle: .actionSheet)
            for city in cities {
                let action = UIAlertAction(title: city, style: .default) { [weak self] _ in
                    switch actionFor {
                    case .from:
                        self?.fromLabel.text = city
                    case .to:
                        self?.toLabel.text = city
                    }
                }
                citySelectionAlert.addAction(action)
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            citySelectionAlert.addAction(cancelAction)
            present(citySelectionAlert, animated: true, completion: nil)
        }
    @IBAction func tomorrowButtonTapped( sender: Any) {
   let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
   datePicker.date = tomorrow
}
    @IBAction func todayButtonTapped( sender: Any) {
    let today = Date()
    datePicker.date = today
}
    
    @IBAction func bookingButton(_ sender: Any) {
        let secondPageViewC = UIStoryboard(name: "Main",bundle:nil).instantiateViewController(withIdentifier: "SecondPageVC") as! SecondPageVC
        secondPageViewC.delegate = self
        present(secondPageViewC, animated: true)
    }
    
    
    let selectedRoute = BusRoute(fromLabel: "İstanbul", toLabel: "Adıyaman", datePicker: Date())

    let defaults = UserDefaults.standard
    let encoder = JSONEncoder()

//    if let encodedData = try? encoder.encode(selectedRoute) {
//        defaults.set(encodedData, forKey: "selectedRoute")
    }

    
//    @IBAction func bookingButtonTapped( sender: Any) {
//        performSegue(withIdentifier: "bookingSegue", sender:nil)
//    }

     
    // enum for City Selection Action
    enum CitySelectionAction {
        case from, to
    }

