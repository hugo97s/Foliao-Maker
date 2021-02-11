//
//  OnboardingViewPure.swift
//  foliaomaker
//
//  Created by Hugo Santos on 11/02/21.
//

import SwiftUI

struct OnboardingViewPure: View {
    var data: [OnboardingDataModel]
    var doneFunction: () -> ()
//    @EnvironmentObject var viewRouter: ViewRouter
    
    @State var slideGesture: CGSize = CGSize.zero
    @State var curSlideIndex = 0
    var distance: CGFloat = UIScreen.main.bounds.size.width
    
    func nextButton() {
        if self.curSlideIndex == self.data.count - 1 {
            doneFunction()
            return
        }
        
        if self.curSlideIndex < self.data.count - 1 {
            withAnimation {
                self.curSlideIndex += 1
            }
        }
    }
    
    var body: some View {
        
        ZStack {
            
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            

            ZStack(alignment: .center) {
                ForEach(0..<data.count) { i in
                    OnboardingStepView(data: self.data[i])
                        .offset(x: CGFloat(i) * self.distance)
                        .offset(x: self.slideGesture.width - CGFloat(self.curSlideIndex) * self.distance)
                        .animation(.spring())
                        .gesture(DragGesture().onChanged{ value in
                            self.slideGesture = value.translation
                        }
                        .onEnded{ value in
                            if self.slideGesture.width < -50 {
                                if self.curSlideIndex < self.data.count - 1 {
                                    withAnimation {
                                        self.curSlideIndex += 1
                                    }
                                }
                            }
                            if self.slideGesture.width > 50 {
                                if self.curSlideIndex > 0 {
                                    withAnimation {
                                        self.curSlideIndex -= 1
                                    }
                                }
                            }
                            self.slideGesture = .zero
                        })
                }
                VStack {
                    Spacer()
                    VStack {
                        self.progressView()
                        Button(action: nextButton) {
                            self.arrowView()
                        }
                    }
                }
                
            }
            
            .padding(60)
        }
    }
    
    func arrowView() -> some View {
        Group {
            if self.curSlideIndex == self.data.count - 1 {
                HStack {
                    Text("Done")
                        .font(.system(size: 27, weight: .medium, design: .rounded))
                        .foregroundColor(Color(.systemBackground))
                }
                .frame(width: 120, height: 50)
                .background(Color(.systemIndigo))
                .border(Color.purple, width: 3)
                .cornerRadius(10)
            } else {

            }
        }
    }
    
    func progressView() -> some View {
        HStack {
            ForEach(0..<data.count) { i in
                Rectangle()
                    .scaledToFit()
                    .frame(width: 10)
                    .foregroundColor(self.curSlideIndex >= i ? Color(.systemIndigo) : Color(.systemGray))
            }
        }
    }
    
}

struct OnboardingViewPure_Previews: PreviewProvider {
    static let sample = OnboardingDataModel.data
    static var previews: some View {
        OnboardingViewPure(data: sample, doneFunction: { print("done") })
    }
}
