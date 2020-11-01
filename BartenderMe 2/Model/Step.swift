//
//  Step.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 21/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import Foundation

enum StepType:Int{
    case tool = 0
    case ingredient
    case ice
    case glass
    case ornamennt
    case shake
    case mixing
    case serv
    case unknow
}

struct Step{
    var type:StepType = StepType.unknow
    var text:String = ""
    var image:String = ""
}
