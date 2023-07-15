//
//  Main.swift
//  WhatsappClone
//
//  Created by Mert ATK on 15.07.2023.
//

import SwiftUI

struct Main: View {
    @State private var selectionIndex = 0
    var body: some View {
        TabView(selection: $selectionIndex){
            StatusView()
                .onAppear(){
                    selectionIndex = 0
                }.tabItem{
                    Label("Durum", systemImage: "circle.dashed.inset.filled")
                }.tag(0)
            CallView()
                .onAppear(){
                    selectionIndex = 1
                }.tabItem{
                    Label("Aramalar", systemImage: "phone")
                }.tag(1)
            CommunityView()
                .onAppear(){
                    selectionIndex = 2
                }.tabItem{
                    Label("Topluluklar", systemImage: "person.3.fill")
                }.tag(2)
            ChatView()
                .onAppear(){
                    selectionIndex = 3
                }.tabItem{
                    Label("Sohbet", systemImage: "bubble.left.and.bubble.right.fill")
                }.tag(3)
            SettingView()
                .onAppear(){
                    selectionIndex = 4
                }.tabItem{
                    Label("Ayarlar", systemImage: "gear")
                }.tag(4)
            }
        }
    }


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
