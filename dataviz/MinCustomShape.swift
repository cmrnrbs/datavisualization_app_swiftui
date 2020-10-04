//
//  MinCustomShape.swift
//  dataviz
//
//  Created by Cemre Onur Baş on 4.10.2020.
//

import SwiftUI

struct MinCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 1.05))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.1, y: rect.maxY * 0.95))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.5, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.4, y: rect.maxY * 1.12))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.81, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.65, y: rect.maxY * 0.85))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY * 1.1), control: CGPoint(x: rect.maxX * 0.9, y: rect.maxY * 1.1))
        
        
        path.addLine(to: CGPoint(x: rect.maxX , y: rect.minY))
        
        return path
    }
}

struct MinCustomShape_Previews: PreviewProvider {
    static var previews: some View {
        MinCustomShape().frame(height: UIScreen.main.bounds.height * 0.6)
    }
}
