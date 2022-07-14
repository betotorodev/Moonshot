//
//  NavigationLinkView.swift
//  Moonshot
//
//  Created by Beto Toro on 14/07/22.
//

import SwiftUI

struct NavigationLinkView: View {
  var body: some View {
    NavigationView {
      List(0..<100) { row in
        NavigationLink {
          Text("Detail \(row)")
        } label: {
          Text("Row \(row)")
        }
      }
      .navigationTitle("SwiftUI")
    }
  }
}

struct NavigationLinkView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationLinkView()
  }
}
