//  ContentView.swift
//  notes

// UI Testing ONLY

import SwiftUI
import UIKit
import CoreData
import Foundation
import Darwin

// Round ButtonStyle
struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 6.0)
            .padding(.horizontal, 150)
            .clipShape(Capsule())
            .foregroundColor(.yellow)
    }
}

struct ContentView: View {
    // Variables, used in TextField
    @State private var note: String = ""
    @FocusState var NoteFieldFocused: Bool

    // Main view, displayed onscreen.
    var body: some View {
        VStack {
            Button("Open Note") {
                openNote()
                body.hidden()
            }
                
                
            }

            .padding(.bottom)
            .buttonStyle(WhiteButton())
            .frame(height: 36)

            // Main TextField
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
