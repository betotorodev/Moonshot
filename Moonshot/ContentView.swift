//
//  ContentView.swift
//  Moonshot
//
//  Created by Beto Toro on 13/07/22.
//

import SwiftUI

struct ContentView: View {
  
  let astronauts = Bundle.main.decode("astronauts.json")
  
    var body: some View {
      Text("\(astronauts.count)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
