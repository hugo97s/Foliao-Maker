//
//  CharacterView.swift
//  foliaomaker
//
//  Created by Hugo Santos on 09/02/21.
//

import SwiftUI

struct CharacterView: View {
    @State var alligatorName: String = ""
    
    var body: some View {
        
            VStack{
                VStack{
                    Spacer()
                        .frame(height: 30)
                    Text("Gliter. Sim ou claro?")
                    Spacer()
                        .frame(height: 30)
                }
               
                HStack{
                    Button(action: {
                              print("purpleGliter button pressed")

                            }) {
                                Image("purpleGliter")
                                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                    Spacer()
                        .frame(width: 50)
                    
                    Button(action: {
                              print("cianGliter button pressed")

                            }) {
                                Image("cianGliter")
                                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                    Spacer()
                        .frame(width: 50)
                    
                    Button(action: {
                              print("yellowGliter button pressed")

                            }) {
                                Image("yellowGliter")
                                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            }
                }
                Spacer()
                    .frame(height: 55)
                
                HStack{
                    Button(action: {
                        print("left button pressed")
                        
                    }) {
                        Image("ArrowLeft")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .position(x: 42, y: 150)
                    }
                    
                    Image("jacarelio")
                        .resizable()
                        .frame(width: 275.22, height: 351.78, alignment: .center)
                        .position(x: 97, y: 160)
                    Button(action: {
                        print("right button pressed")
                        
                    }) {
                        Image("Arrow")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            .position(x: 85, y: 140)
                    }
                }
                Spacer()
                    .frame(height: 250)
                HStack{
                    Spacer()
                        .frame(width: 10)
                    
                    Button(action: {
                        print("tshirt button pressed")
                        
                    }) {
                        Image("tshirt")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                        .frame(width: 30)
                    
                    Button(action: {
                        print("umbrella button pressed")
                        
                    }) {
                        Image("umbrella")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    Spacer()
                        .frame(width: 30)
                    
                    Button(action: {
                        print("crown button pressed")
                        
                    }) {
                        Image("crown")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                    
                    Spacer()
                        .frame(width: 15)
                    
                    Button(action: {
                        print("glasses button pressed")
                        
                    }) {
                        Image("glasses")
                            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                    }
                }
                
                Spacer()
                    .frame(height:45)
               
                    Section {
                        
                        TextField("Your alligator name", text: $alligatorName).textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                            .border(Color.gray, width: 1)
                            .modifier(TextFieldClearButton(text: $alligatorName))
                            .multilineTextAlignment(.center)
                            .cornerRadius(15)
                        
                        Spacer()
                            .frame(height:45)
                    }
                    
                
                    NavigationLink(
                        destination: fichaDePersonagem(),
                        label: {
                            Image("criarButton")
//                                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                            
                        })
//                Button(action: {
//                    print("Criar Ficha button pressed")
//
//                }) {
//                    Image("criarButton")
//                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
//                }
                Spacer()
                    .frame(height:15)
                
            }
            
            
        }
    }


//struct ButtonContent: View {
//    var body: some View {
//        Image("Arrow")
//            .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
////            .resizable()
////            .foregroundColor(.white)
////            .frame(width: 30, height: 30)
////            .padding()
////            .background(Color.orange)
////            .cornerRadius(30)
//    }
//}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
