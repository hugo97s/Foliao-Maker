//
//  fichaDePersonagem.swift
//  foliaomaker
//
//  Created by Vítor Bárrios Luís de Albuquerque on 09/02/21.
//

import SwiftUI

struct fichaDePersonagem: View {
    @State var pontosMalemolencia: Int = 6
    @State var progressMale1: Int = 0
    @State var progressMale2: Int = 0
    @State var progressMale3: Int = 0
    @State var progressMale4: Int = 0
    @State var progressMale5: Int = 0
    @State var progressMale6: Int = 0
    
    @State var pontosSaude: Int = 6
    @State var progressSaude1: Int = 0
    @State var progressSaude2: Int = 0
    @State var progressSaude3: Int = 0
    @State var progressSaude4: Int = 0
    @State var progressSaude5: Int = 0
    @State var progressSaude6: Int = 0
    
    var progressBars = ["1","2","3","4","5","6"]
    
    @State var itensPochete: Int = 0
    
    @State var slot1 = "slot vazio"
    @State var slot2 = "slot vazio"
    @State var slot3 = "slot vazio"
    @State var slot4 = "slot vazio"
    @State var slot5 = "slot vazio"
    @State var slot6 = "slot vazio"
    
    var body: some View {
        
        
        ScrollView(.vertical){
            VStack {
                                Group {
                    ZStack {
                        HStack {
                            
                            Text("Nome do Jaca")
                                .font(.title)
                                .fontWeight(.heavy)
                                .multilineTextAlignment(.center)
                                .position(x: 100, y: 80)
                                .frame(width: 180, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            ZStack{
                                Image("jacarelio")
                                    .resizable()
                                    .frame(width: 208.5, height: 266.5, alignment: .center)
                                    .position(x: 85, y: 105)
                                
                                
                            }
                        }
                        .padding([.top, .leading, .trailing])
                        Button(action: {
                            
                        }) {
                            Image("retorno")
                                .resizable()
                                .frame(width: 35, height: 38.1663974167, alignment: .center)
                                .position(x: 40, y: 27)
                                
                        }

                    }
                }
                
                Text("Distribui os pontos e define tuas características! ")
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/43/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                ZStack{
                    Group {
                        Image("MALEMOLENCIA")
                            .resizable()
                            .frame(width: 380, height: 435.6896551863, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("MALEMOLÊNCIA")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 203, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .position(x: 180, y: 15)
                        Text("Pts: \(pontosMalemolencia)/18")
                            .font(.body)
                            .padding(.trailing)
                            .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .trailing)
                            .position(x: 350, y: 15)
                        Text("Conhecimento do ambiente")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 50)
                        Text("Barganha com vendedor")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 115)
                        Text("Paquera")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 180)
                        Text("Agilidade")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 245)
                        Text("Passinho")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 310)
                        Text("Inocência")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 375)
                    }
                    
                    Group {
                        HStack {
                            Image("\(progressBars[(progressMale1)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 80)
                            
                            Button(action: {
                                
                                if self.progressMale1 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosMalemolencia == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressMale()
                                    self.progressMale1 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 80)
                            Button(action: {
                                
                                if self.progressMale1 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressMale()
                                    self.progressMale1 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 80)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressMale2)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 145)
                            
                            Button(action: {
                                
                                if self.progressMale2 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosMalemolencia == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressMale()
                                    self.progressMale2 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 145)
                            Button(action: {
                                
                                if self.progressMale2 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressMale()
                                    self.progressMale2 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 145)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressMale3)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 210)
                            
                            Button(action: {
                                
                                
                                if self.progressMale3 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosMalemolencia == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressMale()
                                    self.progressMale3 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 210)
                            Button(action: {
                                
                                if self.progressMale3 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressMale()
                                    self.progressMale3 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 210)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressMale4)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 275)
                            
                            Button(action: {
                                
                                
                                if self.progressMale4 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosMalemolencia == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressMale()
                                    self.progressMale4 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 275)
                            Button(action: {
                                
                                if self.progressMale4 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressMale()
                                    self.progressMale4 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 275)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressMale5)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 340)
                            
                            Button(action: {
                                
                                
                                if self.progressMale5 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosMalemolencia == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressMale()
                                    self.progressMale5 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 340)
                            Button(action: {
                                
                                if self.progressMale5 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressMale()
                                    self.progressMale5 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 340)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressMale6)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 405)
                            
                            Button(action: {
                                
                                
                                if self.progressMale6 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosMalemolencia == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressMale()
                                    self.progressMale6 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 405)
                            Button(action: {
                                
                                if self.progressMale6 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressMale()
                                    self.progressMale6 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 405)
                            
                        }
                    }
                }
                ZStack {
                    Group {
                        Image("SAÚDE")
                            .resizable()
                            .frame(width: 380, height: 435.6896551863, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("SAÚDE")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 203, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .multilineTextAlignment(.center)
                            .position(x: 180, y: 15)
                        Text("Pts: \(pontosSaude)/18")
                            .font(.body)
                            .padding(.trailing)
                            .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .trailing)
                            .position(x: 350, y: 15)
                        Text("Bateria do celular")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 50)
                        Text("Fígado")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 115)
                        Text("Garganta")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 180)
                        Text("Capacidade da bexiga")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 245)
                        Text("Hidratação")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 310)
                        Text("Sistema imunológico")
                            .font(.body)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .position(x: 205, y: 375)
                    }
                    
                    Group {
                        HStack {
                            Image("\(progressBars[(progressSaude1)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 80)
                            
                            Button(action: {
                                
                                if self.progressSaude1 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosSaude == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressSaude()
                                    self.progressSaude1 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 80)
                            Button(action: {
                                
                                if self.progressSaude1 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressSaude()
                                    self.progressSaude1 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 80)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressSaude2)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 145)
                            
                            Button(action: {
                                
                                if self.progressSaude2 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosSaude == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressSaude()
                                    self.progressSaude2 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 145)
                            Button(action: {
                                
                                if self.progressSaude2 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressSaude()
                                    self.progressSaude2 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 145)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressSaude3)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 210)
                            
                            Button(action: {
                                
                                if self.progressSaude3 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosSaude == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressSaude()
                                    self.progressSaude3 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 210)
                            Button(action: {
                                
                                if self.progressSaude3 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressSaude()
                                    self.progressSaude3 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 210)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressSaude4)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 275)
                            
                            Button(action: {
                                
                                if self.progressSaude4 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosSaude == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressSaude()
                                    self.progressSaude4 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 275)
                            Button(action: {
                                
                                if self.progressSaude4 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressSaude()
                                    self.progressSaude4 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 275)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressSaude5)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 340)
                            
                            Button(action: {
                                
                                if self.progressSaude5 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosSaude == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressSaude()
                                    self.progressSaude5 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 340)
                            Button(action: {
                                
                                if self.progressSaude5 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressSaude()
                                    self.progressSaude5 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 340)
                            
                        }
                        HStack {
                            Image("\(progressBars[(progressSaude6)])")
                                .resizable()
                                .frame(width: 265, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 205, y: 405)
                            
                            Button(action: {
                                
                                if self.progressSaude6 == 5 {
                                    print("acabou boy")
                                    
                                }
                                else if pontosSaude == 18 {
                                    print("pontos acabaram")
                                }
                                else {
                                    increaseProgressSaude()
                                    self.progressSaude6 += 1
                                    print("adicionou")
                                }
                            }) {
                                Image("adicionar ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }.position(x: 222.5, y: 405)
                            Button(action: {
                                
                                if self.progressSaude6 == 0 {
                                    print("acabou boy")
                                    
                                }
                                else {
                                    decreaseProgressSaude()
                                    self.progressSaude6 -= 1
                                    print("removeu")
                                }
                            }) {
                                Image("remover ponto")
                                    .resizable()
                                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                            }
                            .position(x: -232.5, y: 405)
                            
                        }
                    }
                }
                .padding(.top)
                
                Text("O que tu vai levar na pochete?")
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/43/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Group {
                    ZStack {
                        Group{
                            Image("POCHETE")
                                .resizable()
                                .frame(width: 380, height: 216.2068965487, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("POCHETE")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 203, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .multilineTextAlignment(.center)
                                .position(x: 200, y: 15)
                            Text("Itens: \(itensPochete)/4")
                                .font(.body)
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .trailing)
                                .position(x: 350, y: 15)
                            Text("Chave")
                                .font(.system(size: 12))
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .center)
                                .position(x: 107.5, y: 130)
                            Text("Cigarro")
                                .font(.system(size: 12))
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .center)
                                .position(x: 217, y: 130)
                            Text("Vem")
                                .font(.system(size: 12))
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .center)
                                .position(x: 322.5, y: 130)
                            Text("Brisadeiro")
                                .font(.system(size: 12))
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .center)
                                .position(x: 107.5, y: 217.5)
                            Text("Apito")
                                .font(.system(size: 12))
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .center)
                                .position(x: 217, y: 217.5)
                            Text("Isqueiro")
                                .font(.system(size: 12))
                                .padding(.trailing)
                                .frame(width: /*@START_MENU_TOKEN@*/106/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30/*@END_MENU_TOKEN@*/, alignment: .center)
                                .position(x: 322.5, y: 217.5)
                        }
                        Group {
                            Image("\(slot1)")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 100, y: 92.5)
                            Image("\(slot2)")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: .center)
                                .position(x: 207.5, y: 92.5)
                            Image("\(slot3)")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 315, y: 92.5)
                            Image("\(slot4)")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 100, y: 180)
                            Image("\(slot5)")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 207.5, y: 180)
                            Image("\(slot6)")
                                .resizable()
                                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .position(x: 315, y: 180)
                        }
                        
                        Group {
                            
                            Button(action: {
                                if slot1 == "slot vazio" && itensPochete < 4 {
                                    slot1 = "slot selecionado"
                                    itensPochete += 1
                                }
                                else if slot1 == "slot vazio" && itensPochete == 4 {
                                    
                                    print("acabou boy")
                                }
                                else {
                                    slot1 = "slot vazio"
                                    itensPochete -= 1
                                }
                            }) {
                                Image("chave")
                                    .resizable()
                                    .frame(width: 40, height: 29.4623655909, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }.position(x: 100, y: 92.5)
                            Button(action: {
                                if slot2 == "slot vazio" && itensPochete < 4 {
                                    slot2 = "slot selecionado"
                                    itensPochete += 1
                                }
                                else if slot2 == "slot vazio" && itensPochete == 4 {
                                    
                                    print("acabou boy")
                                }
                                else {
                                    slot2 = "slot vazio"
                                    itensPochete -= 1
                                }
                            }) {
                                Image("cigarro")
                                    .resizable()
                                    .frame(width: 65, height: 41.8761061946, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }.position(x: 215, y: 85)
                            Button(action: {
                                if slot3 == "slot vazio" && itensPochete < 4 {
                                    slot3 = "slot selecionado"
                                    itensPochete += 1
                                }
                                else if slot3 == "slot vazio" && itensPochete == 4 {
                                    
                                    print("acabou boy")
                                }
                                else {
                                    slot3 = "slot vazio"
                                    itensPochete -= 1
                                }
                            }) {
                                Image("vem")
                                    .resizable()
                                    .frame(width: 50, height: 28.0590717302, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }.position(x: 315, y: 92.5)
                            Button(action: {
                                if slot4 == "slot vazio" && itensPochete < 4 {
                                    slot4 = "slot selecionado"
                                    itensPochete += 1
                                }
                                else if slot4 == "slot vazio" && itensPochete == 4 {
                                    
                                    print("acabou boy")
                                }
                                else {
                                    slot4 = "slot vazio"
                                    itensPochete -= 1
                                }
                            }) {
                                Image("brisadeiro")
                                    .resizable()
                                    .frame(width: 40, height: 35.4362416104, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }.position(x: 100, y: 180)
                            Button(action: {
                                if slot5 == "slot vazio" && itensPochete < 4 {
                                    slot5 = "slot selecionado"
                                    itensPochete += 1
                                }
                                else if slot5 == "slot vazio" && itensPochete == 4 {
                                    
                                    print("acabou boy")
                                }
                                else {
                                    slot5 = "slot vazio"
                                    itensPochete -= 1
                                }
                            }) {
                                Image("apito")
                                    .resizable()
                                    .frame(width: 45, height: 30.7394366192, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }.position(x: 207.5, y: 180)
                            Button(action: {
                                if slot6 == "slot vazio" && itensPochete < 4 {
                                    slot6 = "slot selecionado"
                                    itensPochete += 1
                                }
                                else if slot6 == "slot vazio" && itensPochete == 4 {
                                    
                                    print("acabou boy")
                                }
                                else {
                                    slot6 = "slot vazio"
                                    itensPochete -= 1
                                }
                            }) {
                                Image("isqueiro")
                                    .resizable()
                                    .frame(width: 14, height: 51.1617647071, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }.position(x: 315, y: 180)
                            
                        }
                    }
                    
                    
                    
                }
                HStack {
                    Button(action: {
                        
                    }) {
                        Image("salvar")
                            .resizable()
                            .frame(width: 175, height: 56.2056737583, alignment: .leading)
                    }
                    Button(action: {
                        
                    }) {
                        Image("compartilhar")
                            .resizable()
                            .frame(width: 175, height: 56.2056737583, alignment: .trailing)
                    }
                }
            }
            
            
            
            
            
        }
    }
    
    func decreaseProgressMale() {
        self.pontosMalemolencia -= 1
    }
    
    func increaseProgressMale() {
        
        if pontosMalemolencia == 18 {
            print("acabou boy")
        }
        else {
            
            self.pontosMalemolencia += 1
        }
    }
    
    func decreaseProgressSaude() {
        self.pontosSaude -= 1
    }
    
    func increaseProgressSaude() {
        if pontosSaude == 18 {
            print("acabou boy")
        }
        else {
            self.pontosSaude += 1
        }
    }
}

struct fichaDePersonagem_Previews: PreviewProvider {
    static var previews: some View {
        fichaDePersonagem()
    }
}
