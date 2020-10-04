//
//  ContentView.swift
//  dataviz
//
//  Created by Cemre Onur Baş on 4.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    let myList = [CardClass(isActive: true, number: "12", title: "Repeatitions"),CardClass(isActive: false, number: "25", title: "Pushups"),CardClass(isActive: false, number: "25", title: "Pushups")]
    var body: some View {
        ZStack(alignment: .top)
        {
            Color("bgColor")
            
            VStack{
                Spacer()
                HStack
                {
                    Spacer()
                    ZStack
                    {
                        Image(systemName: "plus").font(.system(size: 24))
                    }.frame(width: 64 , height: 64).background(Color.white).cornerRadius(32).shadow(color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.4), radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/ ).onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                        print("tapped!")
                    })
                    
                }.padding(.trailing , 30).padding(.bottom , 30)
            }.frame(width: .infinity, height: .infinity).zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            
            VStack(alignment: .leading, spacing : 10)
            {
                ZStack(alignment: .top)
                {
                    RoundedCorners(tl: 0, tr: 0, bl: 60, br: 0).fill(LinearGradient(gradient: Gradient(colors: [Color("thirdColor"), Color("fourthColor")]), startPoint: .leading, endPoint: .trailing)).frame(height: UIScreen.main.bounds.size.height * 0.7)
                    
                    
                    MinCustomShape().fill(LinearGradient(gradient: Gradient(colors: [Color("tColor"), Color("ftColor")]), startPoint: .leading, endPoint: .trailing)).frame(height: UIScreen.main.bounds.size.height * 0.55)
                    
                    VStack{
                        Spacer()
                        VStack(alignment: .leading){
                            HStack{
                                Text("120").font(.system(size: 65 , weight: .bold)).foregroundColor(.white) + Text(" min").font(.system(size : 45 , weight: .light)).foregroundColor(Color("thinTextThirdColor"))
                                Spacer()
                            }
                            HStack
                            {
                                Text("Total Time").foregroundColor(Color("thinTextFourColor"))
                                Spacer()
                                Image(systemName: "clock").font(.system(size: 20)).foregroundColor(.white)
                            }
                        }.padding(.bottom,  40).padding(.leading , 70).padding(.trailing , 40)
                    }.frame(height: UIScreen.main.bounds.size.height * 0.7)
                }
                HStack{
                    Text("Training").font(.system(size:24, weight: .semibold)).foregroundColor(.white)
                    Spacer()
                }.padding(.leading, 70).padding(.top , 40)
                
                ScrollView(.horizontal,showsIndicators: false, content: {
                    HStack{
                        ForEach(myList) {item in CardItems(isActive: item.isActive, title: item.title, number: item.number)}
                    }.padding(.leading, 70)
                })
            }
            
            
            
            ZStack(alignment : .top)
            {
                RoundedCorners(tl: 0, tr: 0, bl: 60, br: 0).fill(LinearGradient(gradient: Gradient(colors: [Color("firstColor"), Color("secondColor")]), startPoint: .leading, endPoint: .trailing)).frame(height: UIScreen.main.bounds.size.height * 0.45)
                
                CalCustomShape().fill(LinearGradient(gradient: Gradient(colors: [Color("fColor"), Color("sColor")]), startPoint: .leading, endPoint: .trailing)).frame(height: UIScreen.main.bounds.size.height * 0.36)
                
                
                WaveShape().fill(Color.white).frame(height: UIScreen.main.bounds.size.height * 0.25)
                
                VStack{
                    Spacer()
                    VStack(alignment: .leading){
                        HStack{
                            Text("496").font(.system(size: 65 , weight: .bold)).foregroundColor(.white) + Text(" kcal").font(.system(size : 45 , weight: .light)).foregroundColor(Color("thinTextColor"))
                            Spacer()
                        }
                        HStack
                        {
                            Text("Total Calories").foregroundColor(Color("thinSecondColor"))
                            Spacer()
                            Image(systemName: "person.crop.circle.fill").font(.system(size: 20)).foregroundColor(.white)
                        }
                    }.padding(.bottom,  40).padding(.leading , 70).padding(.trailing , 40)
                }.frame(height: UIScreen.main.bounds.size.height * 0.45)
            }
            
            ZStack
            {
                RoundedCorners(tl: 0, tr: 0, bl: 60, br: 0).stroke(Color.black , lineWidth: 0.5).frame(height: UIScreen.main.bounds.size.height * 0.18).overlay(RoundedCorners(tl: 0, tr: 0, bl: 60, br: 0).fill(Color.white).frame(height: UIScreen.main.bounds.size.height * 0.18))
                
                VStack(spacing: 10){
                    HStack
                    {
                        Image(systemName: "arrow.left").font(.system(size: 24))
                            .foregroundColor(Color("iconColor"))
                        Spacer()
                        Image(systemName: "magnifyingglass").font(.system(size: 24))
                            .foregroundColor(Color("iconColor"))
                    }.padding(.horizontal, 40)
                    HStack
                    {
                        Text("Statictics").font(.system(size: 30, weight : .heavy))
                        Spacer()
                    }.padding(.leading , 70)
                }
            }
            
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct WaveShape2 : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.3, y: rect.maxY), control: CGPoint(x: rect.maxX * 0.2, y: rect.maxY * 1.1))
        
        return path
    }
}
