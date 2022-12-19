//
//  ViewController.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

class EnterPhoneViewController: UIViewController {

    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter phone"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(didPressNextButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarcy()
    }

    private func setupHierarcy() {
        title = "EnterPhone"
        view.backgroundColor = .white

        let stackView = UIStackView(arrangedSubviews: [textField, nextButton])
        stackView.frame.size = CGSize(width: 200, height: 120)
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.center = view.center

        view.addSubview(stackView)
    }

    @objc private func didPressNextButton() {
        let userData = UserData(phoneNumber: textField.text, password: nil, name: nil, birthday: nil)

        let conformPhoneViewController = ConformPhoneViewController()
        
        

    }
}
