//
//  UserData.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 22/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    
    @Published var cocktailsList:[Cocktail] = [Cocktail(name: "ALEXANDER", toolList: [Tool(name: "Shaker Boston", description: "", image: "ShakerBoston"), Tool(name: "Jigger", description: "", image: "Jigger"),Tool(name: "Coppetta Cocktail ", description: "", image: "Coppetta")], ingredientList: [Ingredient(name: "COGNAC", description: "", image: "", qta:"3 cl"),Ingredient(name: "MILK CREAM", description: "", image: "", qta:"3 cl"),Ingredient(name: "CACAO CREAM", description: "", image: "", qta:"3 cl")], ornamentList: [Ornament(name: "NOCE MOSCATA", description: "", image: "")], steps: [Step]()),
    Cocktail(name: "AMERICANO", toolList: [Tool](), ingredientList: [Ingredient](), ornamentList: [Ornament](), steps: [Step]()),
    Cocktail(name: "BLOODY MARY", toolList: [Tool](), ingredientList: [Ingredient](), ornamentList: [Ornament](), steps: [Step]()),
    Cocktail(name: "MOJITO", toolList: [Tool](), ingredientList: [Ingredient](), ornamentList: [Ornament](), steps: [Step]())]
    
    @Published var cocktailsCategories:[String:IBNCategory] = ["PRE DINNER":IBNCategory.predinner,"AFTER DINNER":IBNCategory.afterdinner, "LONG DRINK":IBNCategory.longdrink, "POPULAR":IBNCategory.popular]
    
    @Published var cocktailsVolumes:[String:VolumeCategory] = ["SHORT":VolumeCategory.short,"MEDIUM":VolumeCategory.medium, "LONG":VolumeCategory.long]
    
    @Published var cocktailsColors:[ColorCategory:Color] = [ColorCategory.blue:Color.blue, ColorCategory.orange:Color.orange, ColorCategory.purple:Color.purple, ColorCategory.red:Color.red,ColorCategory.white:Color.white,ColorCategory.yellow:Color.yellow]

}
