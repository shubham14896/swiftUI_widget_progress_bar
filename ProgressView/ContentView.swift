//
//  ContentView.swift
//  ProgressView
//
//  Created by Shubham on 24/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Use custom progress view in Swift Widget")
                .font(.title).bold()
                .multilineTextAlignment(.center)
            ProgressView(progress: 0.2)
                .frame(height: 12)
            ProgressView(progress: 0.4,
                         bgColor: Color.red.opacity(0.2),
                         filledColor: Color.red)
                .frame(height: 16)
            ProgressView(progress: 0.6,
                         bgColor: Color.green.opacity(0.2),
                         filledColor: Color.green)
                .frame(height: 24)
        }
        .padding(.all, 12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
