//
//  TwilightView.swift
//  Gabwatni_Cave
//
//  Created by rbwo on 2022/06/09.
//

import SwiftUI

struct TwilightView: View {
    @State  var count: Int = 0
    @State  var maxCount: Int = 2
    
    let size: CGRect = UIScreen.main.bounds
    
     var zoneText: String = "Twilight Zone"
     var zoneDescribe: String = "빛과 어둠이\n 만나는 곳"
    
    @State  var isFirst: Bool = true
    
    @State  var presentView: Bool = false
    @State  var showingImage: String = ""

    @State  var testRender: Bool = false
    
    @Binding var mainflow: Int
    
    var body: some View {
        ZStack{
            Image("twillight-edit")
                .ignoresSafeArea()
                .onTapGesture{
                    testRender.toggle()
                }
            
           // TestLightView()
           
            NextStageButtonView(count: $count, nextCount: $maxCount, isShowing: $presentView, mainflow: $mainflow)
                .position(x: UIScreen.main.bounds.width * 0.8, y: UIScreen.main.bounds.height / 2)
                
            
            ShimmeringItemView(count: $count, isShowing: $presentView, imageName: "salamander", degreeNum: 50, showingImage: $showingImage)
                .frame(width: 500, height: 500)
                .position(x: 100, y: 100)
            
            ShimmeringItemView(count: $count, isShowing: $presentView, imageName: "bat", degreeNum: 180, showingImage: $showingImage)
                .frame(width: 50, height: 50)
                .position(x: 200, y: 200)
            
            if presentView {
                CardView(imageName: showingImage, cardState: $presentView)
                    .padding(.top, 40)
            }
            
           // 진입하면 나오는 view
            ZStack{
                Image("light and darkness meet")
                    .ignoresSafeArea()
                VStack{
                    Text(zoneText)
                        .font(.title3)
                        .foregroundColor(.white)
                    Text(zoneDescribe)
                        .kerning(5)
                        .lineSpacing(10)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isFirst.toggle()
                }
            }
            .opacity(isFirst ? 1 : 0)
            .animation(.easeIn, value: isFirst)
        }
    }
}
