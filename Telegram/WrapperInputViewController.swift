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

    override func viewDidLoad() {
        super.viewDidLoad()

        edgesForExtendedLayout = UIRectEdge()

        maxCharacterLabel.text = "Number of Characters Per Line"

        maxCharacterTextField.borderStyle = .line

        textInputLabel.text = "Text to Wrap"

        textInputTextView.layer.borderWidth = 1
        textInputTextView.layer.borderColor = UIColor.black.cgColor

        inputStackView.axis = .vertical
        inputStackView.distribution = .fillEqually
        inputStackView.alignment = .center
        inputStackView.spacing = 5.0

        inputStackView.addArrangedSubview(maxCharacterLabel)
        inputStackView.addArrangedSubview(maxCharacterTextField)
        inputStackView.addArrangedSubview(textInputLabel)
        inputStackView.addArrangedSubview(textInputTextView)
        inputStackView.frame = view.bounds
        view.addSubview(inputStackView)

        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .rightMargin, relatedBy: .equal, toItem: view, attribute: .rightMargin, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .leftMargin, relatedBy: .equal, toItem: view, attribute: .leftMargin, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .topMargin, relatedBy: .equal, toItem: view, attribute: .topMargin, multiplier: 1, constant: 10))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .bottomMargin, relatedBy: .equal, toItem: view, attribute: .bottomMargin, multiplier: 1, constant: 10))

        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .rightMargin, relatedBy: .equal, toItem: maxCharacterTextField, attribute: .rightMargin, multiplier: 1, constant: 5))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .leftMargin, relatedBy: .equal, toItem: maxCharacterTextField, attribute: .leftMargin, multiplier: 1, constant: 5))

        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .rightMargin, relatedBy: .equal, toItem: textInputTextView, attribute: .rightMargin, multiplier: 1, constant: 5))
        view.addConstraint(NSLayoutConstraint(item: inputStackView, attribute: .leftMargin, relatedBy: .equal, toItem: textInputTextView, attribute: .leftMargin, multiplier: 1, constant: 5))
    }




    
}
