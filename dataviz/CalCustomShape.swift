//
//  CalCustomShape.swift
//  dataviz
//
//  Created by Cemre Onur Baş on 4.10.2020.
//

import SwiftUI

struct CalCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.1, y: rect.maxY * 0.9))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.4, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.3, y: rect.maxY * 1.1))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.71, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.55, y: rect.maxY * 0.78))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.7), control: CGPoint(x: rect.maxX * 0.84, y: rect.maxY * 1.1))
        
        
        path.addLine(to: CGPoint(x: rect.maxX , y: rect.minY))
        
        return path
    }
}

struct CalCustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CalCustomShape().frame(height: UIScreen.main.bounds.height * 0.4)
    }
}
