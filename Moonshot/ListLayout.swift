//
//  ListLayout.swift
//  Moonshot
//
//  Created by Beto Toro on 18/07/22.
//

import SwiftUI

struct ListLayout: View {
  let astronauts: [String: Astronaut]
  let missions: [Mission]
  
  var body: some View {
    List(missions) { mission in
      NavigationLink {
        MissionView(mission: mission, astronauts: astronauts)
      } label: {
        HStack {
          Image(mission.image)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .padding()
          
          VStack(alignment: .leading) {
            Text(mission.displayName)
              .font(.headline)
            Text(mission.formattedLaunchDate)
          }
        }
      }
      .listRowBackground(Color.darkBackground)
    }
    .listStyle(.plain)
  }
}

struct ListLayout_Previews: PreviewProvider {
  
  static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
  static let missions: [Mission] = Bundle.main.decode("missions.json")
  
  static var previews: some View {
    ListLayout(astronauts: astronauts, missions: missions)
      .preferredColorScheme(.dark)
  }
}
