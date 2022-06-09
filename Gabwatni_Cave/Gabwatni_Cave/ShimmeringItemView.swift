//
//  ShimmeringItemView.swift
//  Mc2-Niber
//
//  Created by rbwo on 2022/06/09.
//

import SwiftUI
import Shimmer

struct ShimmeringItemView: View {
    // @EnvironmentObject var data : dataModel
    @State var imageName: String
    @State var count: Int
    @State var degreeNum: Double
    
    @State private var isViewing: Bool = true
    
    var body: some View {
        Button {
            isViewing.toggle()
            count += 1
            print(count)
            // 해당 요소에 맞는 View 보여주면 될 듯 ?
        } label: {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(degreeNum))
                .frame(width: 50, height: 50)
                .shimmering()
        }
        .opacity(isViewing ? 1 : 0)
    }
}



struct ShimmeringItemView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmeringItemView(imageName: "arrow", count: 1, degreeNum: 50)
    }
}