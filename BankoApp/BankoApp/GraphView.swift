//
//  GraphView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI
import Charts

struct GraphView: View {
    
    @State var selectedMonth  = "Mar"
    var body: some View {
        
        ZStack {
            Chart{
                ForEach(items,id: \.id) { item in
                     AreaMark(
                        x: .value("Months", item.month),
                        y: .value("Prices", item.price)
                    )
                     .foregroundStyle(
                        LinearGradient(colors: [.green.opacity(0.8),.white], startPoint: .top, endPoint: .bottom))
                    .interpolationMethod(.cardinal)
                }
            }
            
            VStack(spacing:0) {
                VStack(spacing:-2) {
                    if  let itemprice = items.first { $0.month == selectedMonth   } {
                        Text("$"+"\(itemprice.price)")
                            .foregroundColor(.white)
                            .padding(9)
                            .background(.black)
                            .clipShape(Capsule())
                    }
                    Image(systemName: "arrowtriangle.down.fill")
                        .font(.caption)
                }
                Circle()
                    .frame(width: 5, height: 5)
                    .padding(5)
                    .background(.white)
                    .clipShape(Circle())
                   
                
                
            }.padding(.trailing,40)
        }
        .frame(width: 350)
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
                   
                   GraphView()
                       .frame(width: 380, height: 300)
                   
               }.ignoresSafeArea()
    }
}
