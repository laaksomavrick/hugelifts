//
//  ContentView.swift
//  Hugelifts
//
//  Created by Mavrick Laakso on 2024-03-04.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
           TodayView()
                .tabItem {
                    Label("Today", systemImage: "calendar.badge.clock")
                }
           WorkoutsView()
                .tabItem {
                    Label("Workouts", systemImage: "dumbbell")
                }
           ExercisesView()
                .tabItem {
                    Label("Exercises", systemImage: "figure.strengthtraining.functional")
                }
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
