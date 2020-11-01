//
//  SwiftUIView.swift
//  BartenderMe WatchKit Extension
//
//  Created by Andrea Maria Lupi on 22/01/2020.
//  Copyright © 2020 fernando rosa. All rights reserved.
//

import SwiftUI

var count:Int = 0

var indexCocktail = 0




var steps: [Step] = [Step(type: StepType.unknow, text: "TAKE", image: "ShakerContinental"),Step(type: StepType.unknow, text: "COGNAC", image: "ShakerContinental"),Step(type: StepType.unknow, text: "CACAO CREAM", image: "ShakerContinental"), Step(type: StepType.unknow, text: "MILK CREAM", image: "ShakerContinental"), Step(type: StepType.unknow, text: "SHAKE!", image: "ShakerContinental"),Step(type: StepType.unknow, text: "FILTER", image: "Coppetta"),Step(type: StepType.unknow, text: "NOCE MOSCATA", image: "Coppetta")]



struct StepView: View {
    @State var imageName:String = steps[indexCocktail].image
    @State var currentStep:String = "1"
    @State var currentStepText: String = steps[0].text
    var body: some View {
        
        VStack {
            
            Text(currentStepText)
                .padding(.bottom, -25.0)
                
              
            Image(self.imageName).resizable().frame(width: 60.0, height: 90.0).scaledToFit()
           
            
            .padding(.top, 20.0)
            HStack {
                Button(action: prevButtonTapped) {
                    Text("<")
                }
                
            .background(Color.orange)
            .cornerRadius(6.0)
            
                
                Text(currentStep)
                Text("/")
                Text("\(steps.count)")
                
                if currentStep == "\(steps.count)" {
                    NavigationLink(destination: MainView()) {
                        Text("Done").font(.system(size: 15))
                    }
                     .background(Color.green)
                     .cornerRadius(6.0)
                    
//
//                Button(action: nextButtonTapped) {
//
//                    Text("Done").font(.system(size: 15))
//
//
//                }
//
//            .background(Color.green)
//            .cornerRadius(6.0)
//
               
                } else {
                        Button(action: nextButtonTapped) {
                            
                            Text(">")
                         
                           
                        }
                            
                    .background(Color.orange)
                    .cornerRadius(6.0)
              
                    
                }
            }
            .padding(.bottom, 10.0)
        .padding()
        }
        
        .padding(.top, 40.0)
    }
    
    func prevButtonTapped() {
        
       if indexCocktail > 0 {
                indexCocktail -= 1
        self.imageName = steps[indexCocktail].image
        self.currentStepText = steps[indexCocktail].text
        
        self.currentStep = String(indexCocktail+1)
       } else {
        indexCocktail = 0
        self.currentStep = String(indexCocktail+1)
        self.imageName = steps[indexCocktail].image
        }
    }
    func nextButtonTapped() {

        if indexCocktail < steps.count - 1 {
            indexCocktail += 1
             self.currentStep = String(indexCocktail+1)
             self.currentStepText = steps[indexCocktail].text
            self.imageName = steps[indexCocktail].image
        } else {
            indexCocktail = steps.count - 1
            self.currentStep = String(indexCocktail+1)
            self.imageName = steps[indexCocktail].image
        }
    }
    
  
    
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StepView()
    }
}

