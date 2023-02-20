//
//  ContentView.swift
//  notes
//
//  Created by k on 2/8/23
//

import SwiftUI
import UIKit
import CoreData


// Round ButtonStyle
struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 6.0)
            .padding(.horizontal, 150)
            .clipShape(Capsule())
            .foregroundColor(.white)
    }
}

func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}


func save(_ note: String) {
    let filename = getDocumentsDirectory().appendingPathComponent("output.txt")

    do {
        try note.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
    } catch {}
}

struct ContentView: View {
    // Variables, used in TextField
    @State private var note: String = ""
    @FocusState var NoteFieldFocused: Bool
    
    // Main view, displayed onscreen.
    var body: some View {
        VStack {     
            Button("Test Button") {
                print("Application directory: \(NSHomeDirectory())")
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
