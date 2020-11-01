//
//  MainView.swift
//  BartenderMe WatchKit Extension
//
//  Created by fernando rosa on 21/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            HStack {
                MainMenuSearchButton()
                MainMenuCocktailsButton()
            }
            HStack {
                MainMenuSearchButton(title: "Categories", image: "List")
                MainMenuSearchButton(title: "Random", image: "Random")
            }
        }
        .navigationBarTitle("BARTENDERME")
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group() {
            MainView()
            ListView()
                .environmentObject(UserData())
            CocktailDetailView()
            SearchView()
            CategoriesView()
            RandomView()
        }
    }
}

struct ListView: View {
 
  @EnvironmentObject var userData: UserData
    
  var body: some View {
    VStack {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
            Text("RANDOM")
        }
        .background(Color.orange)
        .cornerRadius(6.0)
        List{
            ForEach(userData.cocktailsList, id: \.name){ item in
                NavigationLink(destination: CocktailDetailView(backTitle:item.name, selectedCocktail:item)) {
                    VStack {
                        Text(item.name)
                        .font(.footnote)
                    }
                }.buttonStyle(PlainButtonStyle())
            }
        }
        .listStyle(CarouselListStyle())
    }.navigationBarTitle("MENU")
  }
}

struct SearchView: View {
 
  @EnvironmentObject var userData: UserData
  var body: some View {
    Text("SEARCH")
  }
}

struct CategoriesView: View {
 
  @EnvironmentObject var userData: UserData
  var body: some View {
    Text("CATEGORIES")
  }
}

struct RandomView: View {
 
  @EnvironmentObject var userData: UserData
  var body: some View {
    Text("RANDOM")
  }
}

struct CocktailDetailView: View {
  var backTitle:String = ""
  var selectedCocktail:Cocktail = Cocktail()
  var body: some View {
    VStack {
        List{
            
            NavigationLink(destination: IngredientsView(backTitle:selectedCocktail.name, ingredientList:selectedCocktail.ingredientList)) {
                VStack {
                    Text("INGREDIENTS")
                    .font(.footnote)
                }
            }.buttonStyle(PlainButtonStyle())
            
            NavigationLink(destination: ToolsView(backTitle:selectedCocktail.name, toolList:selectedCocktail.toolList)) {
                VStack {
                    Text("TOOLS")
                    .font(.footnote)
                }
            }.buttonStyle(PlainButtonStyle())
            
            NavigationLink(destination: OrnamentsView(backTitle:selectedCocktail.name, ornamentList:selectedCocktail.ornamentList)) {
                VStack {
                    Text("ORNAMENTS")
                    .font(.footnote)
                }
            }.buttonStyle(PlainButtonStyle())
           
            
        }
        .listStyle(CarouselListStyle())
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
            Text("GO!")
        }
        .background(Color.orange)
        .cornerRadius(6.0)
    }.navigationBarTitle(backTitle)
  }
}

struct ToolsView: View {
  var backTitle:String = ""
  var toolList:[Tool] = [Tool]()
  var body: some View {
    VStack {
        List{
            ForEach(toolList, id: \.name){ item in
                ToolsImageButton(title: item.name, image: item.image)
        }
        .listStyle(CarouselListStyle())
        }
       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
            Text("GO!")
        }
        .background(Color.orange)
        .cornerRadius(6.0)
            
    }.navigationBarTitle(backTitle)
  }
}

struct IngredientsView: View {
  var backTitle:String = ""
  var ingredientList:[Ingredient] = [Ingredient]()
  var body: some View {
    VStack {
        List{
            ForEach(ingredientList, id: \.name){ item in
                IgredientImageButton(title: item.name, qta: item.qta)
        }
        .listStyle(CarouselListStyle())
        }
       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
            Text("GO!")
        }
        .background(Color.orange)
        .cornerRadius(6.0)
            
    }.navigationBarTitle(backTitle)
  }
}


struct OrnamentsView: View {
  var backTitle:String = ""
  var ornamentList:[Ornament] = [Ornament]()
  //@State var counter: String = String(count)
  var body: some View {
    VStack {
        List{
            ForEach(ornamentList, id: \.name){ item in
                ToolsImageButton(title: item.name, image: item.image)
        }
        .listStyle(CarouselListStyle())
        }
        //Text(counter)
        Button(action:{
            //count += 1
            //self.counter = String(count)
            //print(count)
        }){
            Text("GO!")
        }
        .background(Color.orange)
        .cornerRadius(6.0)
            
    }.navigationBarTitle(backTitle)
  }
}


