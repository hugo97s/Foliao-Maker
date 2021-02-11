//
//  progressBarTest.swift
//  foliaomaker
//
//  Created by Vítor Bárrios Luís de Albuquerque on 10/02/21.
//

import SwiftUI

struct progressBarTest: View {
    @State var currentProgress: Int = 0
    var progressBars = ["1","2","3","4","5","6"]
    
    var body: some View {
        HStack {
            Image("\(progressBars[(currentProgress)])")
                .resizable()
                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .position(x: 205, y: 80)
            
            Button(action: {
                
                if self.currentProgress >= 5 {
                    print("acabou boy")
                    
                }
                else {
                    increaseProgress()
                    print("adicionou")
                }
            }) {
                Image("adicionar ponto")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
            }.position(x: 230, y: 80)
            Button(action: {
                
                if self.currentProgress == 0 {
                    print("acabou boy")
                    
                }
                else {
                    decreaseProgress()
                    print("removeu")
                }
            }) {
                Image("remover ponto")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
            }
            .position(x: -240, y: 80)
            
        }
        
    }
    
    func decreaseProgress() {
        
        self.currentProgress -= 1
    }
    
    func increaseProgress() {
        
        self.currentProgress += 1
        
    }
}

struct progressBarTest_Previews: PreviewProvider {
    static var previews: some View {
        progressBarTest()
    }
}
