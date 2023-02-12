//
//  CreditCardView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct CreditCardView: View {
    var body: some View {
        ZStack(alignment:.leading) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 320, height: 200)
                    
                    VStack(alignment:.leading,spacing:40) {
                        GenericHeaderView(title: "VISA", fontSize: 20,weight: .heavy)
                            
                        VStack(alignment:.leading) {
                            GenericHeaderView(title: "Balance", fontSize: 12)
                            GenericHeaderView(title: "$20,567.50", fontSize: 20)
                        }
                        
                       GenericHeaderView(title: "EX 05/29", fontSize: 14)
                    }.padding(.leading)
                    .foregroundColor(.white)
                 }
                    .overlay(alignment: .trailing) {
                        ZStack(alignment:.leading) {
                            Circle()
                                 .frame(width: 70, height: 70)
                                 .foregroundColor(.red)
                                 .alignmentGuide(.leading) { d in
                                     d[.trailing] + (-28)
                                 }
                            Circle()
                                .frame(width: 70, height: 70)
                                .foregroundColor(.orange)
                                 .blendMode(.screen)
                            
                        }.frame(width: 140)

                    }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
