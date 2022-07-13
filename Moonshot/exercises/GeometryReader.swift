//
//  GeometryReader.swift
//  Moonshot
//
//  Created by Beto Toro on 13/07/22.
//

import SwiftUI

struct GeometryReaderView: View {
  var body: some View {
    //        Image("donut")
    //        .resizable()
    //        .scaledToFill()
    //        .scaledToFit()
    //        .frame(width: 300, height: 300)
    //        .clipped()
    GeometryReader { geo in
      Image("donut")
        .resizable()
        .scaledToFit()
        .frame(width: geo.size.width * 0.8)
        .frame(width: geo.size.width, height: geo.size.height)
    }
  }
}

struct GeometryReaderView_Previews: PreviewProvider {
  static var previews: some View {
    GeometryReaderView()
  }
}
