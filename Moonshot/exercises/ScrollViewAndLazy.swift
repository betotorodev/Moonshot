//
//  ScrollViewAndLazy.swift
//  Moonshot
//
//  Created by Beto Toro on 13/07/22.
//

import SwiftUI

struct ScrollViewAndLazy: View {
  var body: some View {
    ScrollView() {
      LazyVStack(spacing: 10) {
        ForEach(0..<100) {
          Text("Item \($0)")
            .font(.title)
        }
      }
    }
    
  }
}

struct ScrollViewAndLazy_Previews: PreviewProvider {
  static var previews: some View {
    ScrollViewAndLazy()
  }
}
