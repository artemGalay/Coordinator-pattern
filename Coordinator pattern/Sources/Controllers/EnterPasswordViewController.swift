//
//  EnterPasswordViewController.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

class EnterPasswordViewController: UIViewController, FlowController {

    var completionHandler: ((String?) -> ())?
    
    private var userData: UserData?
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter password"
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
        title = "EnterPassword"
        view.backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews: [textField, nextButton])
        stackView.frame.size = CGSize(width: 200, height: 120)
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.center = view.center
        
        view.addSubview(stackView)
    }
    
    @objc private func didPressNextButton() {

        completionHandler?(textField.text)
        
//        userData?.password = textField.text
//
//        let enterNamePhoneViewController = EnterNameViewController()
//
//        enterNamePhoneViewController.setup(userData: userData ?? UserData())
//        navigationController?.pushViewController(enterNamePhoneViewController, animated: true)
    }
    
    func setup(userData: UserData) {
        self.userData = userData
    }
}
