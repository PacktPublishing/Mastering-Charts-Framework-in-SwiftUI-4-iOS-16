//
//  LegendCustomization.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct LegendCustomization: View {
    
    let workouts = [
        (workoutType: "Walk", data: Workout.walkWorkouts),
        (workoutType: "Run", data: Workout.runWorkouts)
    ]
    
    var body: some View {
        VStack {
            Text("Daily Workout Routine")
                .font(.largeTitle)
            Chart {
                ForEach(workouts, id: \.workoutType) { series in
                    ForEach(series.data) { element in
                        LineMark(
                            x: .value("Day", element.day),
                            y: .value("Mins", element.minutes))
                        .interpolationMethod(.catmullRom)
                    }
                    .foregroundStyle(by: .value("Workout Type", series.workoutType))
                    .symbol(by: .value("Workout Type", series.workoutType))
                }
            }
            .frame(height: 400)
            //.chartLegend(.hidden)
            .chartLegend(position: .top, alignment: .center) {
                HStack {
                    VStack {
                        Text("🚶")
                        Color.blue.frame(width: 20, height: 5)
                    }
                    VStack {
                        Text("🏃🏻‍♀️")
                        Color.green.frame(width: 20, height: 5)
                    }
                }
            }
        }
        .padding()
    }
}

struct LegendCustomization_Previews: PreviewProvider {
    static var previews: some View {
        LegendCustomization()
    }
}
