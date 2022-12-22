//
//  AppCoordinator.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController

    var flowCompletionHandler: CoordinatorHandler?

    private var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let isAuth = false

        if !isAuth {
            showRegistrationFlow()
        } else {
            showMainFlow()
        }
    }

    private func showRegistrationFlow() {

        let registrationCoordinator = CoordinatorFactory().createRegistrationCoordinator(navigationController: navigationController)

        childCoordinators.append(registrationCoordinator)

        registrationCoordinator.flowCompletionHandler = { [weak self] in
            self?.showMainFlow()
        }

        registrationCoordinator.start()
    }

    private func showMainFlow() {
    }
}
