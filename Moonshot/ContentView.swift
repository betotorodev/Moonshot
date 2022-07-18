//
//  ContentView.swift
//  Moonshot
//
//  Created by Beto Toro on 13/07/22.
//

import SwiftUI

struct ContentView: View {
  
  let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
  let missions: [Mission] = Bundle.main.decode("missions.json")
  @AppStorage("showingGrid") private var showingGrid = true
  
  var body: some View {
    NavigationView {
      Group {
        if showingGrid {
          GridLayout(astronauts: astronauts, missions: missions)
        } else {
          ListLayout(astronauts: astronauts, missions: missions)
        }
      }
      .navigationTitle("Moonshot")
      .background(.darkBackground)
      .preferredColorScheme(.dark)
      .toolbar {
        Button {
          showingGrid.toggle()
        } label: {
          if showingGrid {
            Label("Show as table", systemImage: "list.dash")
              .foregroundColor(.white)
          } else {
            Label("Show as grid", systemImage: "square.grid.2x2")
              .foregroundColor(.white)
          }
        }
        
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
