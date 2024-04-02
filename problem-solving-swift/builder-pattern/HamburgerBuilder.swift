//
//  HamburgerBuildr.swift
//  problem-solving-swift
//
//  Created by Avijeet on 02/04/24.
//

import Foundation

class HamburgerBuilder {
    private(set) var base: BurgerBase = .paneer
    private(set) var souces: [Sauces] = []
    private(set) var toppings: [Toppings] = []
    
    
    public func addSauces(_ sauce: Sauces) {
        souces.append(sauce)
    }
    
    public func changeBase(_ base: BurgerBase) {
        self.base = base
    }
    
    public func addTpping(_ topping: Toppings) {
        toppings.append(topping)
    }
    
    public func removeSauce() {
        souces.removeLast()
    }
    
    public func removeTopping() {
        toppings.removeLast()
    }
    
    public func build() -> Hamburger {
        return Hamburger(base: base, sauces: souces, toppings: toppings)
    }
}
