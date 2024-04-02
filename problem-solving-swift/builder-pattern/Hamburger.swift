//
//  Hamburger.swift
//  problem-solving-swift
//
//  Created by Avijeet on 02/04/24.
//

import Foundation

struct Hamburger {
    let base: BurgerBase
    let sauces: [Sauces]
    let toppings: [Toppings]
}

enum BurgerBase: String {
    case paneer
    case tofu
}

enum Sauces: String {
    case ketcup
    case mustard
    case firesauce
}

enum Toppings: String {
    case olives
    case cheese
    case mayonise
}
