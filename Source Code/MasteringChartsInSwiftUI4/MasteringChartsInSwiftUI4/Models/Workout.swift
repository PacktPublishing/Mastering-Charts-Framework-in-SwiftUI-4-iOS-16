//
//  Workout.swift
//  MasteringChartsInSwiftUI4
//
//  Created by DevTechie on 9/9/22.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    var day: String
    var minutes: Double
}

extension Workout {
    static let workouts: [Workout] = [
        .init(day: "Mon", minutes: 20),
        .init(day: "Tue", minutes: 45),
        .init(day: "Wed", minutes: 15),
        .init(day: "Thu", minutes: 35),
        .init(day: "Fri", minutes: 75),
        .init(day: "Sat", minutes: 5),
        .init(day: "Sun", minutes: 10),
    ]
    
    static let walkWorkouts: [Workout] = [
        .init(day: "Mon", minutes: 23),
        .init(day: "Tue", minutes: 35),
        .init(day: "Wed", minutes: 55),
        .init(day: "Thu", minutes: 30),
        .init(day: "Fri", minutes: 15),
        .init(day: "Sat", minutes: 65),
        .init(day: "Sun", minutes: 81)
    ]
    
    static let runWorkouts: [Workout] = [
        .init(day: "Mon", minutes: 16),
        .init(day: "Tue", minutes: 12),
        .init(day: "Wed", minutes: 33),
        .init(day: "Thu", minutes: 45),
        .init(day: "Fri", minutes: 22),
        .init(day: "Sat", minutes: 15),
        .init(day: "Sun", minutes: 90),
    ]
}
