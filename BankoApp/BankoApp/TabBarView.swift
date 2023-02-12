//
//  TabBarView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selectedTab : TabBarItems = .house
    var body: some View {
        
        ZStack(alignment:.bottom) {
            switch selectedTab {
            case .house:
                    HomeView()
             
            case .wallet:
                Text("Wallet funds")
                    .frame(maxHeight: .infinity)
            case .home:
                Text("Home View")
                    .frame(maxHeight: .infinity)
            case .message:
               MessagesView()
                    .frame(maxHeight: .infinity)
                    
            case .profile:
                Text("Profile View")
                    .frame(maxHeight: .infinity)
            }
            TabBarView
                .padding(.top,10)
                .frame(width: 400, height: 60, alignment: .center)
               
        } .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}


extension TabBarView {
    var TabBarView : some View {
        HStack(spacing:50) {
            ForEach(allTabs,id:\.rawValue) { item in
                VStack {
                    Image(systemName: item.rawValue)
                    if selectedTab == item {
                        Circle().frame(width: 5, height: 5)
                    }
                }
                .frame(height: 30)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selectedTab = item
                    }
                   
                }
            }
        }
        .padding(EdgeInsets(top: 15, leading: 50, bottom: 19, trailing: 50))
            .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .shadow(radius: 10)
        )

    }
}
