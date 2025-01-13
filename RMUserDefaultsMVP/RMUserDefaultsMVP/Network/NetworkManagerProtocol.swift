//
//  NetworkManagerProtocol.swift
//  RMUserDefaultsMVP
//
//  Created by Ибрагим Габибли on 12.01.2025.
//

import Foundation
import UIKit

protocol NetworkManagerProtocol {
    func getCharacters(completion: @escaping (Result<[Character], Error>) -> Void)

    func loadImage(from urlString: String, completion: @escaping (UIImage?) -> Void)
}
