//  ContentView.swift
//  notes

// UI Testing ONLY
import SwiftUI

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

    // Main view, displayed onscreen.
    var body: some View {
        VStack {
            Button("Open Note") {
            }
            }
            .padding(.bottom)
            .buttonStyle(PlainButtonStyle())
            .frame(height: 36)

            Text("Note").font(.custom("Inter Regular", size: 24))
            
            // Back text
            Text("Back").font(.custom("Inter Regular", size: 24))

            // Edit text
            Text("Edit").font(.custom("Inter Regular", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            
            // Edit button
            Circle()
	        .fill(Color(#colorLiteral(red: 0.4749999940395355, green: 0.4749999940395355, blue: 0.4749999940395355, alpha: 1)))
            .frame(width: 55, height: 55)

            // Menu bar, bar
            Rectangle()
	        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .frame(width: 430, height: 1)
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
