//
//  MultiSeriesBarChartExample.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/12/22.
//

import Charts
import SwiftUI

struct MultiSeriesBarChartExample: View {
    
    let workoutData = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts)
    ]
    
    var body: some View {
        VStack {
            Text("DevTechie")
                .font(.largeTitle)
                .foregroundColor(.primary)
            
            Chart {
                ForEach(workoutData, id: \.workoutType) { element in
                    ForEach(element.data) { workout in
                        BarMark(x: .value("Day", workout.day), y: .value("Workout(in minutes)", workout.minutes))
                    }
                    .foregroundStyle(by: .value("Workout type", element.workoutType))
                    .position(by: .value("Workout type", element.workoutType))
                }
            }
            .frame(height: 400)
        }
        .padding()
    }
}

struct MultiSeriesBarChartExample_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesBarChartExample()
    }
}
