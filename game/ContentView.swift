//
//  ContentView.swift
//  game
//
//  Created by Anubhav Rawat on 06/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var currentScreen: String = "wordle"
    var body: some View {
        WordMatrixScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
