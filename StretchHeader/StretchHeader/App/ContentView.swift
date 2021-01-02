//
//  ContentView.swift
//  StretchHeader
//
//  Created by 中筋淳朗 on 2020/11/10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Property
    
    var screen = UIScreen.main.bounds
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            Color(white: 0.1, opacity: 1)
                .ignoresSafeArea()
            
            ScrollView (showsIndicators: false) {
                
                // MARK: - Header Image
                GeometryReader(content: { geometry in
                    let contentOffset = geometry.frame(in: .global).minY
                    
                    Image("header")
                        .resizable()
                        .scaledToFill()
                        // MARK: - Stretch
                        // 常に動く用
                        .frame(width: screen.width, height: contentOffset + 580)
                        // 上スクロールの時は動かない用
//                        .frame(width: screen.width, height: contentOffset > 0 ? contentOffset + 580 : 580)
                        .offset(y: -contentOffset)
                })
                // ここでframeを書かないとGeometryReader自体のサイズがなくなる
                .frame(height: 480)
                
                // MARK: - Text
                VStack (alignment: .leading, spacing: 15) {
                    Text("Slowpoke")
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                    
                    Text("Slowpoke is a pink Pokémon that resembles a cross between a salamander and a hippopotamus.")
                        .font(.caption)
                    
                    Text("It has vacant eyes that never seem focused, curled ears, and a rounded, tan muzzle. It has four legs, each of which ends in a single white claw. Its long, tapering tail has a white tip. This tail drips a sweet, sappy substance that is attractive to many species of fish. Slowpoke uses the tail as a fishing lure. The tail often breaks off, but it will grow back. In Alola, its tail is often dried and used in home-cooked stews. \n\n Slowpoke has a notoriously dim intellect and often forgets what it was doing. It takes a long time to respond to outside stimuli. For example, it can take up to five seconds to process pain and can take an entire day to notice when its tail has been bitten. Slowpoke is commonly found at the water's edge. In some places, it is believed that Slowpoke's yawn causes rain. This Pokémon is worshiped in those areas. \n\n In Galar, Slowpoke's appearance is a result of particles being built from eating Galarica seeds. The main difference is that it has gained yellow coloration on its forehead and tail. Unlike its counterpart, its tail is always down and said to have a spicy taste. \n\n Galarian Slowpoke are known to relax on seashores and riverbanks without a care in the world. Occasionally, it will get a very sharp look in its eyes as if it is about to think of something tremendous. However, Slowpoke will quickly forget and return to its normal expression. It is believed that its behavior is a result of Galarica particles affecting its brain.")
                        .font(.system(size: 18))
                        .padding(.top, 15)
                    
                    HStack (spacing: 18) {
                        actionButton(title: "Bookmark", color: .blue)
                        actionButton(title: "Buy Goods", color: .red)
                    } //: HStack
                    .padding(.top, 25)
                } //: VStack
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .padding(.top, 25)
                .background(Color(white: 0.1, opacity: 1))
                .cornerRadius(50)
                .offset(y: -35)
                
            } //: Scroll
            .ignoresSafeArea()
        } //: ZStack
            
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
