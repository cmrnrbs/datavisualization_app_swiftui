//
//  CustomShape.swift
//  dataviz
//
//  Created by Cemre Onur Baş on 4.10.2020.
//

import SwiftUI


struct WaveShape : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.3, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.18, y: rect.maxY * 1.2))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.65, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.5, y: rect.maxY * 0.7))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.8), control: CGPoint(x: rect.maxX * 0.75, y: rect.maxY * 1.15))
        
        //path.addLine(to: CGPoint(x: rect.maxX , y: rect.maxY * 0.9))
        
        path.addLine(to: CGPoint(x: rect.maxX , y: rect.minY))
        
        return path
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        WaveShape().frame(height: UIScreen.main.bounds.height * 0.2)
    }
}
