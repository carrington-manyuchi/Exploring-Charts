//
//  RandomArcFromColorListView.swift
//  Exploring Charts
//
//  Created by Manyuchi, Carrington C on 2025/05/01.
//

import SwiftUI

struct RandomArcFromColorListView: View {
    
    //Parameters
    let colors: [Color]
    let index: Int
    let minRadius: CGFloat
    let maxRadius: CGFloat
    let opacityt: CGFloat
    
    //computed properties
    var isValidIndex: Bool {
        index < colors.count && index >= 0
    }
    
    var theIndex: Int {
        isValidIndex ? index : 0
    }
    
    var count: CGFloat {
        CGFloat(colors.count)
    }
    
    var color: Color {
        colors[theIndex]
    }
    
    var endRadius: CGFloat {
        minRadius + maxRadius / count
    }
    
    var rotate: CGFloat {
        Double.random(in: 0...360)
    }
    
    //random constant
    let startTrim = Double.random(in: 0...0.5)
    let endTrim  = 1.0
    
    var body: some View {
        ArcView(
            color:color.opacity(opacityt),
            startRadius: minRadius,
            endRadius: endRadius,
            startTrim: startTrim,
            endTrim: endTrim,
            rotate: rotate
        )
    }
}

#Preview {
    RandomArcFromColorListView(
        colors: Color.defaultColors,
        index: 6,
        minRadius: 170,
        maxRadius: 180,
        opacityt: 0.9
    )
}
