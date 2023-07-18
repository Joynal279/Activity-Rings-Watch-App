//
//  ContentView.swift
//  Activity Rings Watch App Watch App
//
//  Created by Joynal Abedin on 19/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ActivityCircle(color: .red, pct: 0.7)
                .padding(10)
            ActivityCircle(color: .red.withAlphaComponent(0.3), pct: 1.0)
                .padding(10)
            //
            ActivityCircle(color: .green, pct: 0.5)
                .padding(25)
            ActivityCircle(color: .green.withAlphaComponent(0.3), pct: 1.0)
                .padding(25)
            //
            ActivityCircle(color: .cyan, pct: 0.8)
                .padding(40)
            ActivityCircle(color: .cyan.withAlphaComponent(0.3), pct: 1.0)
                .padding(40)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


//Circle view
struct ActivityCircle: View {
    let color: UIColor
    let pct: CGFloat
    
    var body: some View {
        Circle()
            .trim(from: 0, to: pct)
            .rotation(Angle(degrees: -90))
            .stroke(style: StrokeStyle(lineWidth: 13, lineCap: .round, lineJoin: .round))
            .foregroundStyle(Color(color))
    }
}


#Preview {
    ActivityCircle(color: .blue, pct: 0.1)
}
