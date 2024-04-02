//
//  BurgerShop.swift
//  problem-solving-swift
//
//  Created by Avijeet on 02/04/24.
//

import Foundation

class BurgerShop {
    func createPannerBurger(using builder: HamburgerBuilder) -> Hamburger {
        builder.addSauces(.ketcup)
        builder.addTpping(.mayonise)
        builder.addTpping(.olives)
        builder.changeBase(.paneer)
        return builder.build()
    }
}
