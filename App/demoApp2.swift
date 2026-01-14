//
//  demoApp.swift
//  demo
//
//  Created by Ata Sani on 01/13/26.
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
    
    
    @StateObject private var viewModel = AuthViewModel()
    
    

    var body: some Scene {
        WindowGroup {
           
                ContentView().environmentObject(viewModel)
            }
        }
    }





