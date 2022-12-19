//
//  ModuleFactory.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

class ModuleFactory {

    func createEnterPhoneModule() -> EnterPhoneViewController {
        EnterPhoneViewController()
    }

    func createConformPhoneModule() -> ConformPhoneViewController {
        ConformPhoneViewController()
    }

    func createEnterPasswordModule() -> EnterPasswordViewController {
        EnterPasswordViewController()
    }

    func createEnterNameModule() -> EnterNameViewController {
        EnterNameViewController()
    }

    func createEnterBirthdayModule() -> EnterBirthdayViewController {
        EnterBirthdayViewController()
    }
}
