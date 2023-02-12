//
//  PaymentCardView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct PaymentCardView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
                   HStack {
                       ForEach(allPayments,id: \.id) {
                           item in
                           HStack(alignment:.bottom) {
                               VStack(alignment:.leading,spacing: 5) {
                                   if item.title == "Paypal" {
                                       PaypalImage
                                           .padding(5)
                                           .background(.white)
                                           .clipShape(RoundedRectangle(cornerRadius: 10))
                                   }else {
                                       item.image
                                           .frame(width: 30, height: 30)
                                           .padding(5)
                                           .background(.white)
                                           .clipShape(RoundedRectangle(cornerRadius: 10))
                                   }
                                   GenericHeaderView(title: item.title, fontSize: 15)
                                   GenericHeaderView(title: item.date, fontSize: 15)
                                       .foregroundColor(.black.opacity(0.6))
                                   GenericHeaderView(title: item.payment, fontSize: 17,weight: .heavy)
                               }
                               
                               Image(systemName: "line.diagonal.arrow")
                           }
                           .padding()
                               .background{
                                   RoundedRectangle(cornerRadius: 7)
                                       .foregroundColor(item.backColor)
                               }
                       }
                   }
               }
               .padding(.horizontal)
    }
}

struct PaymentCardView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCardView()
    }
}

extension PaymentCardView {
    var PaypalImage : some View {
        Image("Paypal")
            .renderingMode(.original)
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30)
    }
}
