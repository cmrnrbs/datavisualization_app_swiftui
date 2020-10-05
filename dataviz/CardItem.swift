//
//  CardItemView.swift
//  DataVisualizationApp
//
//  Created by Cemre Onur Baş on 4.10.2020.
//

import SwiftUI

struct CardClass :Identifiable {
    var id = UUID()
    var isActive: Bool
    var number : String
    var title: String
}

struct CardItems: View {
    
    var isActive: Bool
    var title: String
    var number: String
    
    var body: some View{
        VStack(spacing: 10)
        {
            Spacer()
            HStack
            {
                Text(self.number).font(.system(size: 36, weight: .heavy, design: .default)).foregroundColor(.white)
                Spacer()
            }
            HStack{
                Text(self.title).foregroundColor(Color("cardText"))
                if(self.isActive)
                {
                    Circle().frame(width : 10, height:10).foregroundColor(Color("circleColor"))
                }
                else{
                    Circle().frame(width : 10, height:10).foregroundColor(.clear)
                }
                Spacer()
            }
            Spacer()
        }.padding(16).background(Color("cardbgColor")).frame(width: UIScreen.main.bounds.size.width * 0.37 , height: 120).cornerRadius(30)
    }
}

struct CardItem_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
