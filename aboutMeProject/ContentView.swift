//
//  ContentView.swift
//  aboutMeProject
//
//  Created by Scholar on 25/07/2024.
//

import SwiftUI

struct ContentView: View{
    @State private var scale = 1.0
    
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.blue)
                .frame(width: 350, height:(700))
            VStack {
                Image("EmmaStone")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 11.0)
//                    .fill(.red)
                    .frame(width: 300.0, height: 300)
                    .scaleEffect(scale)
                    .gesture(TapGesture()
                        .onEnded {
                            scale = scale * 1.1
                        })
            }
        }
    }
}

#Preview {
    ContentView()
}
