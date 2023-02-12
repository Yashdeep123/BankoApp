//
//  BackgroundVIew.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        GeometryReader { geo in
                    ZStack {
                 
                    HStack(spacing:20) {
                            VStack(alignment: .trailing,spacing:20) {
                                Shape2()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.green)
                                    .brightness(0.2)
                                Shape1()
                                    .frame(width: 50, height: 50)
                            }
                            Shape3()
                                .frame(width: 70, height: 70)
                                .padding(.bottom,60)
                                .foregroundColor(.purple)
                        }
                        .position(CGPoint(x: geo.size.width * 0.9, y: geo.size.height * 0.05))
 
                        ZStack {
                            Arc()
                                .stroke(lineWidth: 3)
                                .frame(width: 450, height: 350)
                                .padding(.bottom,100)
                            
                            Rect()
                                .frame(width: 50, height: 50)
                                .rotationEffect(Angle(degrees: 85))
                                .position(CGPoint(x: geo.size.width * 0.138, y: geo.size.height * 0.45))
                        }
                        .frame(width: geo.size.width)
                        .position(CGPoint(x: geo.size.width / 2, y: geo.size.height * 0.208))
                    
                        Rect().frame(width: 100, height: 100)
                        .rotationEffect(Angle(degrees: 45))
                        .position(x: geo.size.width * 0.75, y: geo.size.height * 0.52)
            }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}


struct Shape1 : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rect.width / 2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: true)
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        }
    }
}


struct Shape2 : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rect.width / 2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: false)
         
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        }
    }
}

struct Shape3 : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rect.width / 2,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 360),
                        clockwise: true)
            
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        }
    }
}

struct Arc : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.midY), control: CGPoint(x: rect.midX * 0.25, y: rect.midY * 0.25))
            
            
            path.addQuadCurve(to: CGPoint(x: rect.maxX , y: rect.midY), control: CGPoint(x: rect.midX * 1.5, y: rect.midY * 1.5))
        }
    }
}

struct Rect : Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to:  CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to:  CGPoint(x: rect.midX, y: rect.midY))
            path.addLine(to:  CGPoint(x: rect.minX, y: rect.midY))
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            
            path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.midY), control: CGPoint(x: rect.midX * 0.5, y: rect.midY * 0.5))
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.midY), control: CGPoint(x: rect.midX * 0.5, y: rect.midY * 0.5))
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addQuadCurve(to:  CGPoint(x: rect.minX, y: rect.minY), control: CGPoint(x: rect.midX * 0.5, y: rect.midY * 0.5))
            path.move(to:  CGPoint(x: rect.minX, y: rect.minY))
            path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY), control: CGPoint(x: rect.midX * 0.5, y: rect.midY * 0.5))
        }
    }
}
