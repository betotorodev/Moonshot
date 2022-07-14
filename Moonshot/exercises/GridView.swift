//
//  GridView.swift
//  Moonshot
//
//  Created by Beto Toro on 14/07/22.
//

import SwiftUI

struct GridView: View {
  let layout = [
    GridItem(.adaptive(minimum: 80, maximum: 120)),
  ]
  var body: some View {
    // Vertical
    ScrollView {
      LazyVGrid(columns: layout) {
        ForEach(0..<1000) {
          Text("Item \($0)")
        }
      }
    }
    
    //horizontal
    ScrollView(.horizontal) {
      LazyHGrid(rows: layout) {
        ForEach(0..<1000) {
          Text("Item \($0)")
        }
      }
    }
  }
}

struct GridView_Previews: PreviewProvider {
  static var previews: some View {
    GridView()
  }
}
