//
//  MultiSeriesLineChart.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/13/22.
//

import Charts
import SwiftUI

struct MultiSeriesLineChart: View {
    let workouts = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts)
    ]
    
    var body: some View {
        Chart {
            ForEach(workouts, id: \.workoutType) { series in
                ForEach(series.data) { element in
                    LineMark(x: .value("Day", element.day), y: .value("Mins", element.minutes))
                        .interpolationMethod(.cardinal)
                }
                .foregroundStyle(by: .value("WorkoutType", series.workoutType))
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct MultiSeriesLineChart_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesLineChart()
    }
}
