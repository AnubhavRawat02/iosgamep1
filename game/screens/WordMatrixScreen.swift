//
//  WordMatrixScreen.swift
//  game
//
//  Created by Anubhav Rawat on 06/10/22.
//

import SwiftUI

struct WordMatrixScreen: View {
    
    @State var selectedWord: String = ""
    @State var reset:Bool = false
    
    @StateObject var wordmatrixobj: WordMatrixModel = WordMatrixModel()
    
    var body: some View {
        VStack{
            VStack(spacing: 5){
                
                ForEach(wordmatrixobj.matrix, id: \.self){row in
                    Rows(rowword: row, selectedWord: $selectedWord, reset: $reset)
                }
            }
            .onChange(of: selectedWord) { newValue in
                if selectedWord.count == 6{
                    if wordmatrixobj.checkWord(word: selectedWord){
    //                    word is correct
                        selectedWord = ""
                        reset = !reset
                        print("word found")
                    }
                }
                if selectedWord.count == 7{
                    if wordmatrixobj.checkWord(word: selectedWord){
    //                    word found
                        selectedWord = ""
                        reset = !reset
                        print("word found")
                    }
                    else{
    //                    word not found. give haptic feedback
                        selectedWord = ""
                        reset = !reset
                        print("word not found")
                    }
                }
            }
            
            VStack{
                if wordmatrixobj.words.count == 0{
                    Text("done")
                }else{
                    ForEach(wordmatrixobj.remainingWords, id: \.self){word in
                        Text(word)
                    }
                }
            }
        }
        
    }
}

struct Rows: View{
    
    var rowword: [L]
    @Binding var selectedWord: String
    @Binding var reset: Bool
    
    var body: some View{
        HStack(spacing:5){
            ForEach(rowword, id: \.self){leter in
                Leter(selectedWord: $selectedWord, reset: $reset, leter: leter)
            }
        }
    }
}

struct Leter: View{
    @Binding var selectedWord: String
    @Binding var reset: Bool
    var leter: L
    @State private var selected:Bool = false
    
    var body: some View{
        ZStack(alignment: .center){
            selected ? Color.black.frame(width: 30, height: 30) : Color.red.frame(width: 30, height: 30)
                
            Text("\(leter.ltr)").foregroundColor(.white)
                .fontWeight(.bold)
        }
        .onChange(of: reset, perform: { newValue in
            selected = false
        })
        .onTapGesture {
            if !selected{
                selectedWord = "\(selectedWord)\(leter.ltr)"
                DispatchQueue.main.async {
                    selected = true
                }
            }
        }
    }
}

struct WordMatrixScreen_Previews: PreviewProvider {
    static var previews: some View {
        WordMatrixScreen()
    }
}
