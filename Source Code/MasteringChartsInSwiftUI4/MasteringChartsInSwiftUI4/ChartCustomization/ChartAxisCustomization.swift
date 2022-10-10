//
//  ChartAxisCustomization.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct ChartAxisCustomization: View {
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
            //.chartXAxis(.hidden)
            .chartXAxis {
                //AxisMarks(position: .trailing)
//                AxisMarks(stroke: StrokeStyle(lineWidth: 2, dash: [2, 3, 4]))
                AxisMarks { value in
//                    AxisGridLine(centered: true, stroke: StrokeStyle(dash: [2, 4, 8])).foregroundStyle(Color.pink)
                    
                    AxisGridLine(centered: false, stroke: StrokeStyle(dash: [2, 4, 8])).foregroundStyle(Color.pink)
                    
                    //AxisTick(centered: true, stroke: StrokeStyle(lineWidth: 4))
                        .foregroundStyle(Color.pink)
                    
                    AxisTick(centered: false, stroke: StrokeStyle(lineWidth: 4))
                        .foregroundStyle(Color.pink)
                    
                    //AxisValueLabel(centered: false)
                    //AxisValueLabel(verticalSpacing: 40)
                    AxisValueLabel {
                        if let month = value.as(String.self) {
                            Text("🏃🏻‍♀️" + month.prefix(1))
                                .font(.title2)
                                .foregroundStyle(Color.orange.gradient.shadow(.inner(radius: 1)))
                        }
                    }
                }
            }
            .chartYAxis(.hidden)
        }
        .padding()
    }
}

struct ChartAxisCustomization_Previews: PreviewProvider {
    static var previews: some View {
        ChartAxisCustomization()
    }
}
