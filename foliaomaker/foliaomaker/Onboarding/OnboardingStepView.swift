//
//  OnboardingStepView.swift
//  foliaomaker
//
//  Created by Hugo Santos on 11/02/21.
//

import SwiftUI

struct OnboardingStepView: View {
    var data: OnboardingDataModel
//    @EnvironmentObject var viewRouter: ViewRouter
//

    var body: some View {
        VStack {
//            Button(action:{
//                withAnimation {
////                    self.viewRouter.currentPage = "ContentView"
//                }
//            }, label: {
//                Text("Pular")
//                    .font(.callout)
//                    .foregroundColor(Color.purple)
//            })
            Image(data.image)
                .resizable()
                .scaledToFit()
                .padding(.bottom, 50)
            
            Text(data.heading)
                .font(.system(size: 25, design: .rounded))
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text(data.text)
                .font(.system(size: 17, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
        }
    .padding()
    }
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var data = OnboardingDataModel.data[0]
    static var previews: some View {
        OnboardingStepView(data: data)
    }
}
