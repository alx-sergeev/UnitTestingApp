//
//  DataModel.swift
//  UnitTestingApp
//
//  Created by Сергеев Александр on 05.01.2022.
//

import Foundation

class DataModel {
    private(set) var volume = 0
    
    // Устанавливаем значение свойству volume.
    // Значение value должно быть: 0 <= value <= 100
    func setVolume(to value: Int) {
        volume = max(min(value, 100), 0)
    }
}
