//
//  CoordinatorFactory.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

class CoordinatorFactory {

    func createRegistrationCoordinator(navigationController: UINavigationController) -> RegistrationCoordinator {
        RegistrationCoordinator.init(navigationController: navigationController)
    }

    func createAppCoordinator(navigationController: UINavigationController) -> AppCoordinator {
        AppCoordinator.init(navigationController: navigationController)
    }
}
