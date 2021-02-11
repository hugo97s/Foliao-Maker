////
////  ViewRouter.swift
////  foliaomaker
////
////  Created by Hugo Santos on 11/02/21.
////
//
//import Foundation
//import SwiftUI
//
//class ViewRouter: ObservableObject {
//
//    init() {
//        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
//            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
//            currentPage = "initialScreenView"
//        } else {
//            currentPage = "fichaDePersonagem"
//        }
//    }
//
//    @Published var currentPage: String
//
//}
