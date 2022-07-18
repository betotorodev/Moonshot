//
//  RectangleView.swift
//  Moonshot
//
//  Created by Beto Toro on 18/07/22.
//

import SwiftUI

struct RectangleView: View {
  var body: some View {
    Rectangle()
      .frame(height: 2)
      .foregroundColor(.lightBackground)
      .padding(.vertical)
  }
}

struct RectangleView_Previews: PreviewProvider {
  static var previews: some View {
    RectangleView()
  }
}
