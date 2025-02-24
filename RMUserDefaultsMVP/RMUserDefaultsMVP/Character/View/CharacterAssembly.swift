//
//  CharacterAssembler.swift
//  RMUserDefaultsMVP
//
//  Created by Ибрагим Габибли on 24.02.2025.
//

import Foundation
import UIKit

final class CharacterAssembly {
    func build() -> UIViewController {
        let viewController = CharacterViewController()
        let storageManager = StorageManager()
        let networkManager = NetworkManager(storageManager: storageManager)

        let presenter = CharacterPresenter(
            view: viewController,
            networkManager: networkManager,
            storageManager: storageManager
        )

        let tableViewDataSource = CharacterTableViewDataSource(presenter: presenter)

        viewController.presenter = presenter
        viewController.tableViewDataSource = tableViewDataSource
        tableViewDataSource.presenter = presenter

        let navigationController = UINavigationController(rootViewController: viewController)
        return navigationController
    }
}
