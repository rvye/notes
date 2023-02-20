// ContentView.swift
// notes

// For testing ui, no actual functionality
import SwiftUI
import UIKit

struct WhiteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 6.0)
            .padding(.horizontal, 150)
            .clipShape(Capsule())
            .foregroundColor(.white)
    }
}

struct ContentView : View {
  var body: some View {
    VStack {
      Button("button") {
        print("button pressed")
      }
      
      .padding(.bottom)
      .buttonStyle(WhiteButton())
      .frame(height: 36)
      
      TextField("Note")
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
