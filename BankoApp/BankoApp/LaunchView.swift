//
//  LaunchView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct LaunchView: View {
    @State var go : Bool = false
    var body: some View {
        NavigationStack {
                   ZStack {
                       BackgroundView()
                       ForegroundView()
                   }
                   .navigationDestination(isPresented: $go) {
                           TabBarView()
                               .toolbar(.hidden)
                       
                       
                   }
               }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

extension LaunchView {
    
    var buttonView : some View {
        Button {
          go = true
        } label: {
            HStack(spacing:-4) {
                Image("arrow.right")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .opacity(0.25)
                Image("arrow.right")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .opacity(0.5)
                Image("arrow.right")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
            }  .padding(32)
                .background(Color.white)
                .clipShape(Circle())
                .colorInvert()
        }
    }
    
    var BankingTitleView : some View {
        Text("Easy banking with simple way")
            .font(.system(size: 40, weight: .bold, design: .default))
            .frame(width: 290, height: 200)
            .offset(x: -50, y: 0)
    }
    
    func ForegroundView() -> some View {
        VStack(spacing:40) {
            VStack {
                Image("Banko")
                    .padding(.top,50)
                Text("Banko")
                    .font(.system(size: 35, weight: .bold, design: .default))
            }
            VStack(spacing:15) {
                BankingTitleView
                buttonView

            }
           
        }
    }
}
