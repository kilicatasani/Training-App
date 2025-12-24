//
//  demoApp.swift
//  demo
//
//  Created by Zeynep Göktepe on 8/10/23.
//

import SwiftUI
import Firebase
import UIKit
import FirebaseCore


@main



struct demoApp: App {
    init() {
            
            FirebaseApp.configure()
        }
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            }
        }
    }





