//
//  ContentView.swift
//  button test
//
//  Created by k on 2/8/23
//

import SwiftUI
import UIKit

// Round ButtonStyle
struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 6.0)
            .padding(.horizontal, 180.0)
            .clipShape(Capsule())
            .foregroundColor(.black)
    }
}

func save(_ note: String) {
    print(note)
}

struct ContentView: View {
    // Variables, used in TextField
    @State private var note: String = ""
    @FocusState var NoteFieldFocused: Bool
    
    // Main view, displayed onscreen.
    var body: some View {
        VStack {     
            Button("Test Button") {
                print("Button Pressed")
            }
            .padding(.bottom)
            .buttonStyle(WhiteButton())
            .frame(height: 36)
            
            // Main TextField
            TextField("Note", text: $note)
                .focused($NoteFieldFocused)
                
                .onChange(of: note) {note in
                    save(note)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
