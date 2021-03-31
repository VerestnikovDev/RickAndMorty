//
//  ViewController.swift
//  RickAndMorty
//
//  Created by a.verestnikov on 30.03.2021.
//

import UIKit
import WidgetKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    private let key = "CharacterName"
    private let storage = UserDefaults(suiteName: "group.com.verestnikov.dev.RickAndMorty")

    override func viewDidLoad() {
        super.viewDidLoad()
        let savedName = storage?.string(forKey: key)
        textField.text = savedName
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        let newName = textField.text
        storage?.setValue(newName, forKey: key)
        WidgetCenter.shared.reloadAllTimelines()
    }

}
