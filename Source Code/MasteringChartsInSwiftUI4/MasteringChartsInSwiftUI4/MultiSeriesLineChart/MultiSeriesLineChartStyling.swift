//
//  MultiSeriesLineChartStyling.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/13/22.
//

import Charts
import SwiftUI

struct MultiSeriesLineChartStyling: View {
    let workouts = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts)
    ]
    
    var body: some View {
        Chart {
            ForEach(workouts, id: \.workoutType) { series in
                ForEach(series.data) { element in
                    LineMark(x: .value("Day", element.day), y: .value("Mins", element.minutes))
                        .interpolationMethod(.stepCenter)
                        .annotation(position: .leading) {
                            Text(series.workoutType == "Walk" ? "🚶" : "🏃🏻‍♀️")
                                .font(.title2)
                        }
                }
                
                .foregroundStyle(by: .value("WorkoutType", series.workoutType))
                .symbol(by: .value("WorkoutType", series.workoutType))
            }
        }
        .frame(height: 400)
        .padding()
    }
}

struct MultiSeriesLineChartStyling_Previews: PreviewProvider {
    static var previews: some View {
        MultiSeriesLineChartStyling()
    }
}
