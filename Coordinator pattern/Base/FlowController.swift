//
//  FlowController.swift
//  Coordinator pattern
//
//  Created by Артем Галай on 19.12.22.
//

import Foundation

protocol FlowController {

    associatedtype T
    var completionHandler: ((T) -> ())? { get set }

}
