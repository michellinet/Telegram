//
//  WrapperInputViewController.swift
//  Telegram
//
//  Created by Michelline Tran on 7/6/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import Foundation
import UIKit

class WrapperInputViewController: UIViewController {
    let maxCharacterLabel = UILabel()
    let maxCharacterTextField = UITextField()
    let textInputLabel = UILabel()
    let textInputTextView = UITextView()
    let inputStackView = UIStackView()

    func doneButtonPressed() {
        if let number = maxCharacterTextField.text, let text = textInputTextView.text {
            let maxCharacterInput = Int(number) ?? 0
            let textInput = text
            let inputWrapper = Wrapper(maxCharacters: maxCharacterInput, text: [textInput])

            navigationController?.pushViewController(ViewController(wrapper: inputWrapper), animated: true)
        } else {
            //TODO: tell da user its not workin'
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed))
        navigationItem.rightBarButtonItem = doneButton

        edgesForExtendedLayout = UIRectEdge()
        //UI Stuff
        maxCharacterLabel.text = "Number of Characters Per Line"
        maxCharacterTextField.borderStyle = .line
        textInputLabel.text = "Text to Wrap"
        textInputTextView.layer.borderWidth = 1
        textInputTextView.layer.borderColor = UIColor.black.cgColor

        //Stack View Stuff
        inputStackView.axis = .vertical
        inputStackView.distribution = .fill
        inputStackView.alignment = .center
        inputStackView.spacing = 5.0
        inputStackView.translatesAutoresizingMaskIntoConstraints = false

        inputStackView.addArrangedSubview(maxCharacterLabel)
        inputStackView.addArrangedSubview(maxCharacterTextField)
        inputStackView.addArrangedSubview(textInputLabel)
        inputStackView.addArrangedSubview(textInputTextView)
        inputStackView.frame = view.bounds
        view.addSubview(inputStackView)

        //A Lot of Constraints
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -10))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -10))

        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .right, relatedBy: .equal, toItem: maxCharacterTextField, attribute: .right, multiplier: 1, constant: 5))
        view.addConstraint(NSLayoutConstraint(item: maxCharacterTextField , attribute: .left, relatedBy: .equal, toItem: inputStackView, attribute: .left, multiplier: 1, constant: 5))

        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .right, relatedBy: .equal, toItem: textInputTextView, attribute: .right, multiplier: 1, constant: 5))
        view.addConstraint(NSLayoutConstraint(item: textInputTextView, attribute: .left, relatedBy: .equal, toItem: inputStackView, attribute: .left, multiplier: 1, constant: 5))

        view.addConstraint(NSLayoutConstraint(item: maxCharacterLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30))
        view.addConstraint(NSLayoutConstraint(item: textInputLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30))
    }
    
}
