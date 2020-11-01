//
//  IngredientButton.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 21/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import SwiftUI

import SwiftUI

struct IgredientImageButton: View {
    var title:String = "COGNAC"
    var qta:String = "3 cl"
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
            HStack {
                Text(title)
                Spacer()
                Text(qta)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
            }
        }.padding()
    }
}

struct IgredientImageButton_Previews: PreviewProvider {
    static var previews: some View {
        IgredientImageButton()
    }
}
