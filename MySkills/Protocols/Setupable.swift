//
//  Setupable.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

protocol ViewModelProtocol {}

protocol Setupable {
    func setup(with viewModel: ViewModelProtocol)
}

