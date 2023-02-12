//
//  GenericHeaderView.swift
//  BankoApp
//
//  Created by Yash Patil on 12/02/23.
//

import SwiftUI

struct GenericHeaderView: View {
    
    let title : String
      let fontSize: CGFloat
      var weight : Font.Weight = .medium
      
    var body: some View {
        Text(title)
                   .font(.system(size: fontSize, weight: weight, design: .rounded))
    }
}

struct GenericHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GenericHeaderView(title: "Hello World", fontSize: 30,weight: .heavy)
    }
}
