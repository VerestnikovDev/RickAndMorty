//
//  ViewController.swift
//  RickAndMorty
//
//  Created by a.verestnikov on 30.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    private let key = "CharacterName"
    private let storage = UserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        let savedName = storage.string(forKey: key)
        textField.text = savedName
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {

    }

}
