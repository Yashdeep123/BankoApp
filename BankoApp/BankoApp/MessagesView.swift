//
//  MessagesView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

enum Buttons {
    case Income
    case Expense
}

struct MessagesView: View {
    
    @State var isClicked : Buttons = .Income
    
    var body: some View {
        ScrollView {
                   VStack(spacing: 40) {
                       
                      GenericHeaderView(title: "Your Balance", fontSize: 22)
                       HStack{
                           Button {
                               isClicked = .Income
                           } label: {
                               Text("Income")
                                   .foregroundColor(isClicked == .Income ? .white: .black)
                                   .padding(EdgeInsets(top: 13, leading: 50, bottom: 13, trailing: 50))
                                   .background{
                                       if isClicked != .Income {
                                           RoundedRectangle(cornerRadius: 7, style: .circular)
                                               .stroke(lineWidth: 0.5)
                                               .foregroundColor(.gray)
                                       }else {
                                           RoundedRectangle(cornerRadius: 7)
                                               .foregroundColor(.black)
                                       }
                                   }
                                   
                           }

                           Button {
                               isClicked = .Expense
                           } label: {
                               Text("Expense")
                                   .foregroundColor(isClicked == .Expense ? .white : .black)
                                   .padding(EdgeInsets(top: 13, leading: 50, bottom: 13, trailing: 50))
                                   .background{
                                       if isClicked != .Expense {
                                           RoundedRectangle(cornerRadius: 7, style: .circular)
                                               .stroke(lineWidth: 0.5)
                                               .foregroundColor(.gray)
                                       }else {
                                           RoundedRectangle(cornerRadius: 7)
                                               .foregroundColor(.black)
                                       }
                                   }
                                   
                                       
                           }

                       }
                       .tint(.black)
                       
                       VStack(spacing:10) {
                           GenericHeaderView(title: "Balance", fontSize: 15)
                               .frame(maxWidth: 320,alignment: .leading)
                           HStack {
                               GenericHeaderView(title: "$15,560.00", fontSize: 26,weight: .heavy)
                                   .frame(maxWidth: 220,alignment: .leading)
                               HStack(spacing:5) {
                                   Text("Oct - Feb")
                                   Image(systemName: "arrowtriangle.down.fill")
                                       .font(.caption)
                               }
                           }
                          GraphView()
                               .frame(height: 250)
                       }
                       GenericHeaderView(title: "Payments History", fontSize: 25)
                           .frame(width: 350,alignment: .leading)
                       PaymentCardView()
                       
                   }
               }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
