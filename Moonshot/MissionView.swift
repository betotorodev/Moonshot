//
//  MissionView.swift
//  Moonshot
//
//  Created by Beto Toro on 14/07/22.
//

import SwiftUI

struct MissionView: View {
  
  let mission: Mission
  let astronauts: [String: Astronaut]
  
  var body: some View {
    GeometryReader { geometry in
      ScrollView {
        VStack {
          Image(mission.image)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: geometry.size.width * 0.6)
            .padding(.top)
            .accessibilityLabel("The mission badge for \(mission.displayName)")
          
          Text(mission.formattedLaunchDate2)
            .font(.caption)
            .foregroundColor(.white.opacity(0.5))
          
          VStack(alignment: .leading) {
            RectangleView()

            Text("Mission Highlights")
              .font(.title.bold())
              .padding(.bottom, 5)
            
            Text(mission.description)
            
            RectangleView()
            
            Text("Crew")
              .font(.title.bold())
              .padding(.bottom, 5)
          }
          .padding(.horizontal)
          
          CrewView(mission: mission, astronauts: astronauts)
          
        }
        .padding(.bottom)
      }
    }
    .navigationTitle(mission.displayName)
    .navigationBarTitleDisplayMode(.inline)
    .background(.darkBackground)
  }
}

struct MissionView_Previews: PreviewProvider {
  static let missions: [Mission] = Bundle.main.decode("missions.json")
  static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
  
  static var previews: some View {
    MissionView(mission: missions[1], astronauts: astronauts)
      .preferredColorScheme(.dark)
  }
}
