//
//  ContentView.swift
//  button test
//

// TODO
// Add note storage ( local or cloud )
// Figure out how to move buttons, or text boxes

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


struct ContentView: View {
    @State var note: String = ""
    @FocusState var NoteFieldFocused: Bool

    
    var body: some View {
        VStack {
                        
            Button("Test Button") {
                print("Button Pressed")
            }
            .padding(.bottom)
            .buttonStyle(WhiteButton())
            .frame(height: 36)
            
            TextField("Note", text:$note).focused($NoteFieldFocused )
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
