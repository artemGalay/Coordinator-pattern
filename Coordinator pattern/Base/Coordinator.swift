//
//  Coordinator.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import UIKit

typealias CoordinatorHandler = () -> ()

protocol Coordinator: AnyObject {

    var navigationController: UINavigationController { get set }
    var flowCompletionHandler: CoordinatorHandler? { get set }

    func start()
}
