//
//  CrewView.swift
//  Moonshot
//
//  Created by Beto Toro on 18/07/22.
//

import SwiftUI

struct CrewView: View {
  struct CrewMember {
    let role: String
    let astronaut: Astronaut
  }
  let mission: Mission
  let crew: [CrewMember]
  
  init(mission: Mission, astronauts: [String: Astronaut]) {
    self.mission = mission
    
    self.crew = mission.crew.map { member in
      if let astronaut = astronauts[member.name] {
        return CrewMember(role: member.role, astronaut: astronaut)
      } else {
        fatalError("Missing \(member.name)")
      }
    }
  }
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(crew, id: \.role) { crewMember in
          NavigationLink {
            AstronautView(astronaut: crewMember.astronaut)
          } label: {
            HStack {
              Image(crewMember.astronaut.id)
                .resizable()
                .frame(width: 104, height: 72)
                .clipShape(Capsule())
                .overlay(
                  Capsule()
                    .strokeBorder(.white, lineWidth: 1)
                )
              
              VStack(alignment: .leading) {
                Text(crewMember.astronaut.name)
                  .foregroundColor(.white)
                  .font(.headline)
                  .accessibilityLabel(crewMember.astronaut.name.replacingOccurrences(of: ".", with: " "))
                Text(crewMember.role)
                  .foregroundColor(.secondary)
              }
            }
            .padding(.horizontal)
          }
        }
      }
    }
  }
}

struct CrewView_Previews: PreviewProvider {
  static let missions: [Mission] = Bundle.main.decode("missions.json")
  static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
  
  static var previews: some View {
    CrewView(mission: missions[1], astronauts: astronauts)
      .preferredColorScheme(.dark)
  }
}
