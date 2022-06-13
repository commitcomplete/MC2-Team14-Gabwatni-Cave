//
//  EntranceView-info.swift
//  Gabwatni_Cave
//
//  Created by dohankim on 2022/06/09.
//

import SwiftUI

struct EntranceView_info: View {
    @Binding var flow : Int
    @ObservedObject var cardVM = CardViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
            VStack {
                Text(cardVM.cards[0].title)
                    .foregroundColor(.white)
                Text(cardVM.cards[0].imageName)
                    .foregroundColor(.white)
                Text(cardVM.cards[0].text)
                    .foregroundColor(.white)
            }
            
            Button {
                print(cardVM.cards[0].title)
                flow=3
            } label: {
                Text("다음")
            }
            
        }
    }
}


struct entranCardView: View {
    @ObservedObject var cardVM = CardViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
            VStack {
                Text(cardVM.cards[0].title)
                    .foregroundColor(.white)
                Text(cardVM.cards[0].imageName)
                    .foregroundColor(.white)
                Text(cardVM.cards[0].text)
                    .foregroundColor(.white)
            }
            
            Button {
                print(cardVM.cards[0].title)
            } label: {
                Text("다음")
            }
            
        }
    }
}
