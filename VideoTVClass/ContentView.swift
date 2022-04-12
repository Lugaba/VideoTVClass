//
//  ContentView.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataProvider = DataProvider()
    
    var body: some View {
        NavigationView {
            TabView {
                Text("bom dia")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
