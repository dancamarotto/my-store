//
//  my_storeApp.swift
//  my-store
//
//  Created by Danilo Camarotto on 17/07/2022.
//

import SwiftUI

@main
struct my_storeApp: App {
    
    let vm = BagViewModel()
    
    var body: some Scene {
        WindowGroup {
//            HomeView()
            BagView(vm: vm)
        }
    }
}
