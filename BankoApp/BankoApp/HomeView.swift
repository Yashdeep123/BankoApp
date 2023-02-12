//
//  HomeView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
                  
                   HeadingView
                   
                   VisaCardView
                   
                   FunctionsView
                   
                   SentView
                   
                   TransactionsView
                   
               }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
      
    var HeadingView : some View {
        HStack {
           Image("Robert")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            VStack(alignment:.leading){
                GenericHeaderView(title: "Hello!Robert", fontSize: 15,weight: .light)
                GenericHeaderView(title: "Welcome back", fontSize: 20)
            }
            Spacer()
            Image(systemName: "bell.badge.fill")
                .padding(5)
                .background(Circle().stroke(lineWidth: 0.5))
                
        }.padding(.horizontal)
    }
    
    var VisaCardView : some View {
        HStack(spacing:10) {
           CreditCardView()
                RoundedRectangle(cornerRadius: 12)
                .frame(width: 50, height: 200)
                .overlay {
                    Button {
                        
                    } label: {
                        Text("+")
                            .foregroundColor(.white)
                            .font(.title)
                    }

                }
            
        }
        .padding(.horizontal)
    }
    
    var SentView : some View {
        VStack {
            HStack {
                GenericHeaderView(title: "Sent to", fontSize: 30)
                    .frame(width: 300,alignment: .leading)
                HStack(spacing:2) {
                    Text("View all")
                        .font(.callout)
                    Image(systemName: "chevron.right")
                        .font(.caption)
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(allPersons,id: \.name) { item in
                        VStack {
                            if  item == allPersons.first! {
                                Image(systemName: item.image)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(.black)
                                    .clipShape(Circle())
                            }else {
                                Image(item.image)
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                            }
                            Text(item.name)
                        }
                    }
                }
            }.padding(.horizontal)
        }
    }
    
    var FunctionsView : some View {
        HStack(spacing:50) {
            ForEach(allfunc,id:\.color) {
                item in
                VStack {
                    Image(systemName: item.systemImage)
                        .frame(width: 40, height: 40)
                        .background(item.color)
                        .clipShape(Circle())
                    Text(item.name)
                        .font(.caption2)
                }
            }
        }.padding()
    }
    
    var TransactionsView : some View {
        VStack {
            HStack {
                GenericHeaderView(title: "Transactions", fontSize: 30)
                    .frame(width: 270,alignment: .leading)
                HStack {
                    Text("Today")
                        .font(.callout)
                    Image(systemName: "chevron.down")
                        .font(.caption)
                }
                .padding(10)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            ScrollView {
                VStack {
                    ForEach(allTransactions,id:\.id) { item in
                
                        HStack {
                            if item == allTransactions.first! {
                                item.image
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .background(item.backColor)
                                    .clipShape(Circle())
                            }else {
                               item.image
                            }
                            VStack(alignment:.leading) {
                                item.title
                                item.subTitle
                            }.frame(width: 200,alignment: .leading)
                            
                            VStack(alignment:.trailing){
                                Text(item.transaction)
                                    .fontWeight(.heavy)
                                Text(item.time)
                                    .font(.caption)
                            }
                        }
                    }
                }
            }
        }
    }
}
