//
//  Cocktail.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 21/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import Foundation

enum IBNCategory:Int{
    case predinner = 0
    case afterdinner
    case longdrink
    case popular
    case unknow
}

enum VolumeCategory:Int{
    case short = 0
    case medium
    case long
    case unknow
}

enum ColorCategory:Int{
    case red = 0
    case white
    case yellow
    case blue
    case purple
    case orange
}

struct Cocktail {
    
    var name:String = ""
    var ibncategory:IBNCategory = IBNCategory.unknow
    var volume:VolumeCategory = VolumeCategory.unknow
    var toolList:[Tool] = [Tool]()
    var ingredientList:[Ingredient] = [Ingredient]()
    var ornamentList:[Ornament] = [Ornament]()
    var steps:[Step] = [Step]()
}
