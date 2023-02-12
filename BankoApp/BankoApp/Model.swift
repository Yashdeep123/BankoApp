//
//  Model.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import Foundation
import SwiftUI

enum TabBarItems : String {
    case house = "house.fill"
    case wallet = "wallet.pass.fill"
    case home = "creditcard.viewfinder"
    case message = "ellipsis.message.fill"
    case profile = "person.fill"
}


let allTabs : [TabBarItems] = [.house,.wallet,.home,.message,.profile]

struct Persons :Equatable {
    let image: String
    let name: String
}

let allPersons: [Persons] = [Persons(image: "plus", name: "Add"),
                             Persons(image: "p1", name: "Alexa"),
                             Persons(image: "p2", name: "Ava"),
                             Persons(image: "p3", name: "Jym"),
                             Persons(image: "p4", name: "Catie"),
                             Persons(image: "p5", name: "Jo")
]

struct Functions {
    let systemImage : String
    let name : String
    let color : Color
}

let allfunc : [Functions] = [Functions(systemImage: "paperplane.fill", name: "Send",color: Color.purple.opacity(0.7)),
                             Functions(systemImage: "square.and.arrow.down.fill", name: "Request",color: Color.green.opacity(0.6)),
                             Functions(systemImage: "creditcard.fill", name: "E-Wallet",color: Color.blue.opacity(0.4)),
                             Functions(systemImage: "ellipsis", name: "More",color: Color.yellow)]


struct TransStruct  : Equatable {
    static func == (lhs: TransStruct, rhs: TransStruct) -> Bool {
        return true
    }
    
    
    let id = UUID()
    let image : Image
    let title : GenericHeaderView
    let subTitle : GenericHeaderView
    let backColor : Color
    let transaction : String
    let time : String
}


let allTransactions : [TransStruct] = [TransStruct(image: Image("amazon"), title: GenericHeaderView(title: "Amazon", fontSize: 20), subTitle: GenericHeaderView(title: "Payment", fontSize: 15), backColor: .purple, transaction: "$275.00", time: "10.12 AM"),
                                       TransStruct(image: Image(systemName: "sailboat.fill"), title: GenericHeaderView(title: "BOAT", fontSize: 20), subTitle: GenericHeaderView(title: "Electronics", fontSize: 15), backColor: .green.opacity(0.6), transaction: "$360.00", time: "11.30 PM"),
                                       TransStruct(image: Image(systemName: "globe.americas.fill"), title: GenericHeaderView(title: "Infonium", fontSize: 20), subTitle: GenericHeaderView(title: "Services", fontSize: 15), backColor: .yellow, transaction: "$450.00", time: "7:45 PM")
                          ]




struct PaymentCard : Identifiable,Equatable {
    
    
    let id = UUID()
    let image : Image
    let title : String
    let date : String
    let payment: String
    let backColor: Color
}


let allPayments : [PaymentCard] = [PaymentCard(image: Image(systemName: "handbag.fill"), title: "Shopping", date: "Jul 12,2022", payment: "+$1327",backColor: Color.green.opacity(0.6)),
                                   PaymentCard(image:  Image("Paypal"), title: "Paypal", date: "Jul 09,2022", payment: "$3502",backColor: Color.purple.opacity(0.6)),
                                   PaymentCard(image: Image(systemName: "laptopcomputer.and.iphone"), title: "Electronics", date: "Jun 24,2022", payment: "$3300",backColor: Color.yellow.opacity(0.7))]



struct LineChartItems : Identifiable {
    let id = UUID()
    let price : Int
    let month : String
}

let items :[LineChartItems] = [LineChartItems(price: 300, month: "Jan"),
                               LineChartItems(price: 700, month: "Feb"),
                               LineChartItems(price: 600, month: "Mar"),
                               LineChartItems(price: 1200, month: "Apr"),
                               LineChartItems(price: 500, month: "May")]
