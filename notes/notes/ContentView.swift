//  ContentView.swift
//  notes

import SwiftUI
import UIKit
import CoreData
import Foundation
import Darwin

// Read from file
let file = getDocumentsDirectory().appendingPathComponent("output.txt")
let fn = file.path()

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

func openNote() {
    FileManager.default.createFile(atPath: fn, contents: nil, attributes: nil)

    NoteView()
}

func getDocumentsDirectory() -> URL {
    let paths = FileManager.default.urls(for:.documentDirectory, in: .userDomainMask)
    return paths[0]
}

func save(_ note: String) {
    let filename = getDocumentsDirectory().appendingPathComponent("output.txt")

    do {
        try note.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
    } catch {}
}

struct NoteView: View {
    @State var contents = try! String(contentsOfFile: fn)

    var body: some View{
        VStack {

            TextEditor(text: $contents)
        }
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
                NoteView()
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
