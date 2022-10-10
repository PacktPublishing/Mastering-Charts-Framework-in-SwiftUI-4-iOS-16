//
//  ChartsIntro.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/9/22.
//

import SwiftUI
import Charts

struct ChartsIntro: View {
    var body: some View {
        BarChartExample()
    }
}

struct AnnotationCustomViewExample: View {
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Day", workout.day), y: .value("Workout(in minutes)", workout.minutes))
                .foregroundStyle(by: .value("Day", workout.day))
                .annotation {
                    AnnotationView(workout: workout)
                }
        }
        .chartForegroundStyleScale(domain: Workout.workouts.compactMap({ workout in
            workout.day
        }), range: Constants.markColors)
        .frame(height: 400)
        .padding()
    }
}

struct AnnotationView: View {
    
    let workout: Workout
    
    var body: some View {
        let idx = Workout.workouts.firstIndex(where: { $0.id == workout.id }) ?? 0
        return VStack(spacing: 0) {
            Text("\(workout.minutes.formatted()) mins")
            Image(systemName: "figure.stand")
        }
        .font(.caption2)
        .foregroundStyle(Constants.markColors[idx])
    }
}

struct Constants {
    static let markColors: [LinearGradient] = [
        LinearGradient(colors: [.pink, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.blue, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.orange, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.mint, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.cyan, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.purple, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.indigo, .green], startPoint: .bottom, endPoint: .top),
            ]
}

struct AnnotationsExample: View {
    let markColors: [Color] = [.pink, .purple, .cyan, .indigo, .orange, .red, .brown]
    
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Day", workout.day), y: .value("Workout(in minutes)", workout.minutes))
                .foregroundStyle(by: .value("Day", workout.day))
                .annotation(position: .overlay) {
                    Image(systemName: "figure.stand")
                        .foregroundStyle(.indigo)
                }
        }
        .chartForegroundStyleScale(domain: Workout.workouts.compactMap({ workout in
            workout.day
        }), range: markColors)
        .frame(height: 400)
        .padding()
    }
}

struct ChartForegroundStyleScaleExample: View {
    
//    let markColors: [Color] = [.pink, .purple, .cyan, .indigo, .orange, .red, .brown]
    let markColors: [LinearGradient] = [
        LinearGradient(colors: [.pink, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.blue, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.orange, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.mint, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.cyan, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.purple, .green], startPoint: .bottom, endPoint: .top),
                LinearGradient(colors: [.indigo, .green], startPoint: .bottom, endPoint: .top),
            ]
    
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Day", workout.day), y: .value("Workout(in minutes)", workout.minutes))
                .foregroundStyle(by: .value("Day", workout.day))
        }
        .chartForegroundStyleScale(domain: Workout.workouts.compactMap({ workout in
            workout.day
        }), range: markColors)
        .frame(height: 400)
        .padding()
    }
}

struct ChartForegroundStyleExample: View {
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Day", workout.day), y: .value("Workout(in minutes)", workout.minutes))
                .foregroundStyle(by: .value("Day", workout.day))
        }
        .frame(height: 400)
        .padding()
        .navigationTitle("DevTechie")
    }
}

struct DynamicChartExample: View {
    var body: some View {
        Chart(Workout.workouts) { workout in
            BarMark(x: .value("Workout(in minutes)", workout.minutes), y: .value("Day", workout.day))
        }
        .frame(height: 400)
        .padding()
    }
}

struct BarChartExample: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Day", "Mon"), y: .value("Minutes", 20))
            BarMark(x: .value("Day", "Tue"), y: .value("Minutes", 65))
            BarMark(x: .value("Day", "Wed"), y: .value("Minutes", 40))
            BarMark(x: .value("Day", "Thu"), y: .value("Minutes", 50))
        }
        .frame(height: 400)
        .padding()
    }
}

struct HoriozntalBarChartExample: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Minutes", 20), y: .value("Day", "Mon"))
            BarMark(x: .value("Minutes", 65), y: .value("Day", "Tue"))
            BarMark(x: .value("Minutes", 40), y: .value("Day", "Wed"))
            BarMark(x: .value("Minutes", 50), y: .value("Day", "Thu"))
        }
        .frame(height: 400)
        .padding()
    }
}

struct ChartsIntro_Previews: PreviewProvider {
    static var previews: some View {
        ChartsIntro()
    }
}
