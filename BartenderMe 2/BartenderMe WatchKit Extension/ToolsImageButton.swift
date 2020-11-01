//
//  ToolsImageButton.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 20/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import SwiftUI

struct ToolsImageButton: View {
    var title:String = "Shaker Boston"
    var image:String = "ShakerBoston"
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
            HStack {
                Text(title)
                Spacer()
                Image(image)
                .aspectRatio(contentMode: .fit)
            }
        }.padding()
    }
}

struct ToolsImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ToolsImageButton()
    }
}
