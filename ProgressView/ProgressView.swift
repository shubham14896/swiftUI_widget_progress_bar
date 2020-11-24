//
//  ProgressView.swift
//  ProgressView
//
//  Created by Shubham on 24/11/20.
//

import SwiftUI

struct ProgressView: View {
    var progress: CGFloat
    var bgColor = Color.black.opacity(0.2)
    var filledColor = Color.blue

    var body: some View {
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(bgColor)
                    .frame(width: width,
                           height: height)
                    .cornerRadius(height / 2.0)

                Rectangle()
                    .foregroundColor(filledColor)
                    .frame(width: width * self.progress,
                           height: height)
                    .cornerRadius(height / 2.0)
            }
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(progress: 12)
    }
}
