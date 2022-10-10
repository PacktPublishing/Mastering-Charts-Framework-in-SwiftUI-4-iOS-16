//
//  ChartPlotStyleCustomization.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/14/22.
//

import Charts
import SwiftUI

struct ChartPlotStyleCustomization: View {
    
    @State private var walkData = Workout.walkWorkouts
    
    var body: some View {
        VStack {
            Text("Daily Workout Routine")
                .font(.largeTitle)
            
            Chart(walkData) { walk in
                BarMark(
                    x: .value("Day", walk.day),
                    y: .value("Mins", walk.minutes)
                )
                .foregroundStyle(Color.orange)
            }
            .frame(height: 400)
            .chartPlotStyle { content in
                content
                    .background(Color.pink.gradient)
                    .blendMode(.difference)
                    .border(Color.orange, width: 2)
                    //.opacity(0.2)
                    .shadow(radius: 2)
            }
        }
        .padding()
    }
}

struct ChartPlotStyleCustomization_Previews: PreviewProvider {
    static var previews: some View {
        ChartPlotStyleCustomization()
    }
}
