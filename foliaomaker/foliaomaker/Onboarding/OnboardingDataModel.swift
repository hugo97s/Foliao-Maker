//
//  OnboardingDataModel.swift
//  foliaomaker
//
//  Created by Hugo Santos on 11/02/21.
//

import Foundation

struct OnboardingDataModel {
    var image: String
    var heading: String
    var text: String
}

extension OnboardingDataModel {
    static var data: [OnboardingDataModel] = [
        OnboardingDataModel(image: "FoliaoMakerImage", heading: "Seja Bem Vinde!!", text: "Calma, foliones! Viemos trazer esperança para sua festa."),
        OnboardingDataModel(image: "vacinac19", heading: " BumbumTANTAN", text:"Aqui já vivemos num mundo pós vacina mas que nos trouxe um efeito colateral irreparável.." + "\n" + "Somos uma nova raça. E Quem diria que a vacina seria tão perigosa?!"),
        OnboardingDataModel(image: "jacarelioPerfil", heading: "Jacarelio World", text: "A raça Jacarélio agora domina o mundo mas a boa notícia é que o carnaval também! " + "\n" + "Livres do coronga e prontos pra ocupar as ladeiras que tal criar seu novo look?"),

    ]
}
