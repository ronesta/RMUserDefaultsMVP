//
//  CharacterViewProtocol.swift
//  RMUserDefaultsMVP
//
//  Created by Ибрагим Габибли on 11.01.2025.
//

import Foundation

protocol CharacterViewProtocol: AnyObject {
    func updateCharacters(_ characters: [Character])
    
    func showError(_ message: String)
}
