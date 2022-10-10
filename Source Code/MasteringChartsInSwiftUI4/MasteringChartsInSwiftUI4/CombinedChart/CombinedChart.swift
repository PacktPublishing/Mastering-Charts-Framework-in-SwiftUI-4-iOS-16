//
//  CombinedChart.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct CombinedChart: View {
    
    @State private var walkData = Workout.walkWorkouts
    
    var body: some View {
        VStack {
            Text("Weekly Walk Data")
                .font(.largeTitle)
            
            Chart {
                ForEach(walkData) { walk in
                    AreaMark(
                        x: .value("Day", walk.day),
                        y: .value("Mins", walk.minutes))
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(Gradient(colors: [.blue.opacity(0.3), .clear]))
                    
                    LineMark(
                        x: .value("Day", walk.day),
                        y: .value("Mins", walk.minutes)
                    )
                    .interpolationMethod(.catmullRom)
                    .foregroundStyle(.blue)
                    
                    PointMark(
                        x: .value("Day", walk.day),
                        y: .value("Mins", walk.minutes)
                    )
                    .annotation {
                        Text(walk.minutes.formatted())
                            .font(.caption2)
                    }
                }
                RuleMark(y: .value("Target", 45))
                    .lineStyle(StrokeStyle(dash: [2]))
                    .foregroundStyle(.orange.gradient)
                    .annotation(position: .overlay) {
                        Text("Daily Target")
                            .font(.caption2)
                            .background(.white)
                    }
            }
            .frame(height: 400)
            .padding()
        }
    }
}

struct CombinedChart_Previews: PreviewProvider {
    static var previews: some View {
        CombinedChart()
    }
}
