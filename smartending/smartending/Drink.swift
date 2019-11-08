//
//  Drink.swift
//  smartending
//
//  Created by Calli Sabaitis on 11/8/19.
//  Copyright © 2019 Calli Sabaitis. All rights reserved.
//

import Foundation

class Drink {
    var name: String!
    var tools: [String]!
    var ingredients: [String]!
    var garnish: String!
    var glass: String!
    var instructions: String
    var picName: String!
    
    init(name: String, tools: [String], ingredients: [String], garnish: String, glass: String, instructions: String, picName: String) {
        self.name = name
        self.tools = tools
        self.ingredients = ingredients
        self.garnish = garnish
        self.glass = glass
        self.instructions = instructions
        self.picName = picName
        
    }
    
    func getIngredientsList() -> String {
        var a = ""
        for i in 0..<self.ingredients.count {
            if i != self.ingredients.count {
                a +=  String(i)+", "
            }
        }
        return a
    }
    func getToolsList() -> String {
        var a = ""
        for i in 0..<self.tools.count {
            if i != self.tools.count {
                a +=  String(i)+", "
            }
        }
        return a
    }
}
