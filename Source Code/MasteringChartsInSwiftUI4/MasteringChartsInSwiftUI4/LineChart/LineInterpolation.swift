//
//  LineInterpolation.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/12/22.
//

import Charts
import SwiftUI

struct LineInterpolation: View {
    @State private var walkWorkouts = Workout.walkWorkouts
    
    var body: some View {
        VStack {
            Text("DevTechie")
                .font(.largeTitle)
                .foregroundColor(.primary)
            
            Chart {
                ForEach(walkWorkouts) { workout in
                    LineMark(
                        x: .value("Day", workout.day),
                        y: .value("Workout(in minutes)", workout.minutes)
                    )
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
                }
                .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
                .interpolationMethod(.cardinal)
            }
            .frame(height: 200)
            .padding()
            
            Chart {
                ForEach(walkWorkouts) { workout in
                    LineMark(
                        x: .value("Day", workout.day),
                        y: .value("Workout(in minutes)", workout.minutes)
                    )
                    .lineStyle(.init(lineWidth: 10, lineCap: .round, lineJoin: .round))
                }
                .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
                .interpolationMethod(.monotone)
            }
            .frame(height: 200)
            .padding()
        }
    }
}

struct LineInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        LineInterpolation()
    }
}
