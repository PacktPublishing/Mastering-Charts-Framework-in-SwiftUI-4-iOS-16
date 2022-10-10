//
//  LineChartSymbol.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/12/22.
//

import Charts
import SwiftUI

struct LineChartSymbol: View {
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
                    .lineStyle(.init(lineWidth: 2, lineCap: .round, lineJoin: .round))
                    .annotation {
                        Text("🚶")
                            .font(.largeTitle)
                    }
                    .symbol(.pentagon)
                }
                .foregroundStyle(Gradient(colors: [.yellow, .orange, .pink]))
            }
            .frame(height: 400)
            .padding()
        }
    }
}

struct LineChartSymbol_Previews: PreviewProvider {
    static var previews: some View {
        LineChartSymbol()
    }
}
