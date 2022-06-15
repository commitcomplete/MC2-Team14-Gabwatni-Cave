//
//  ContentView.swift
//  Gabwatni_Cave
//
//  Created by 이창형 on 2022/06/08.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var vm : CardViewModel2
    
    var body: some View {
        if vm.flow == -1 {
            IntroControl()
        }
        else if vm.flow == 0 {
            AncestorView(mainflow: vm.flow)
        }
        else if vm.flow == 1 {
            EntranceControl()
        }
        else if vm.flow == 2 {
            Dongdalsays()
                .onAppear {
                    vm.itemDict["bat"] = false
                    vm.itemDict["salamander"] = false
                }
        }
        else if vm.flow == 3 {
            DeepDarkControl(mainflow: vm.flow)
                .onDisappear {
                    vm.dragOffset = CGSize.zero
                    vm.dragOffset2 = CGSize.zero
                }
        }   
        else if vm.flow == 4 {
            Abyss()
                .onAppear {
                    vm.itemDict["water"] = false
                    vm.itemDict["cavecoral"] = false
                }
        }
        else if vm.flow == 5 {
            ClearView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
