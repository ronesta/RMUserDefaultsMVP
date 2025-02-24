//
//  StorageManager.swift
//  RMUserDefaultsMVP
//
//  Created by Ибрагим Габибли on 09.01.2025.
//

import Foundation
import UIKit

final class StorageManager: StorageManagerProtocol {
    private let charactersKey = "charactersKey"

    func saveCharacters(_ characters: [Character]) {
        do {
            let data = try JSONEncoder().encode(characters)
            UserDefaults.standard.set(data, forKey: charactersKey)
        } catch {
            print("Failed to encode characters: \(error)")
        }
    }

    func loadCharacters() -> [Character]? {
        guard let data = UserDefaults.standard.data(forKey: charactersKey),
              let characters = try? JSONDecoder().decode([Character].self, from: data) else {
            return nil
        }

        return characters
    }

    func clearCharacters() {
        UserDefaults.standard.removeObject(forKey: charactersKey)
    }

    func saveImage(_ image: Data, key: String) {
        UserDefaults.standard.set(image, forKey: key)
    }

    func loadImage(key: String) -> Data? {
        return UserDefaults.standard.data(forKey: key)
    }

    func clearImage(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
