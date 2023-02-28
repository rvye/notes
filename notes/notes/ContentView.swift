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
        VStack{}

            Text("Note")
              .font(Font.custom("Inter-Regular", size: 24))
              .foregroundColor(Color.black)
              .frame(minWidth: 56.00, minHeight: 27.00, alignment: .topLeading)
              .position(x: 187, y: 16)
        
            // Back text
            Text("Back")
            .font(Font.custom("Inter-Regular", size: 24))
            .foregroundColor(Color.black)
            .frame(minWidth: 76.00, minHeight: 30.00, alignment: .topLeading)
            .position(x: 19, y: 16)


        
            
            // Edit text
            Text("Edit")
              .font(Font.custom("Inter-Regular", size: 16))
              .foregroundColor(Color.white)
              .frame(minWidth: 39.00, minHeight: 23.00, alignment: .topLeading)
              .position(x: 360, y: 873)

            
            // Edit button

            // Menu bar, bar
            Rectangle()
              .fill(Color.black)
              .frame(width: 430.00, height: 1.00)
              .position(x: 0, y: 61)
        
            Ellipse()
            .fill(Color(red: 1.00, green: 0.00  , blue: 0.00))
              .frame(width: 55.00, height: 55.00)
              .position(x: 347, y: 855)


        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
