//
//  MainMenuButton.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 21/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import SwiftUI

enum ViewType:Int{
    case search = 0
    case cocktails
    case categories
    case random
    case unknow
}

struct MainMenuSearchButton: View {
    var title:String = "Search"
    var image:String = "Search"
    
    var body: some View {
        VStack {
            NavigationLink(destination: SearchView()
                .environmentObject(UserData())) {
                VStack {
                    ZStack{
                        Circle()
                            .foregroundColor(Color(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0))
                        
                        Image(image)
                            .frame(width: 25.0, height: 25.0, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    }
                    
                    Text(title)
                    .font(.footnote)
                }
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct MainMenuCocktailsButton: View {
    var title:String = "Cocktails"
    var image:String = "cocktails"
    
    var body: some View {
        VStack {
            NavigationLink(destination: ListView()
                .environmentObject(UserData())) {
                VStack {
                    ZStack{
                        Circle()
                            .foregroundColor(Color(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0))
                        
                        Image(image)
                            .frame(width: 25.0, height: 25.0, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    }
                    
                    Text(title)
                    .font(.footnote)
                }
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct MainMenuSearchButton_Previews: PreviewProvider {
    static var previews: some View {
        //MainMenuSearchButton()
        MainMenuCocktailsButton()
    }
}
