//
//  ContentView.swift
//  Self Portrait
//
//  Created by Scholar on 4/20/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        ZStack {
            
            Color(red:202/255, green: 233/255, blue: 255/255)
                .ignoresSafeArea()
            // background color
            
            Capsule()
                .frame(width: 320, height: 600)
                .offset(y: 70)
                .foregroundColor(Color(red: 219/255, green: 180/255, blue: 44/255))
            // back of head hair
            
            Rectangle()
                .frame(width: 80, height: 200)
                .offset(y: 200)
                .foregroundColor(Color(red: 249/255, green: 220/255, blue: 196/255))
            // shirt
            
            Capsule()
                .frame(width: 250, height: 300)
                .foregroundColor(Color(red: 249/255, green: 220/255, blue: 196/255))
                .shadow(radius: 10)
            // face
            
            RoundedRectangle(cornerRadius: 70)
                .foregroundColor(Color(red: 255/255, green: 170/255, blue: 234/255))
                .frame(width: 350, height: 400)
                .offset(y: 400)
                
            // neck
            
            Group {
                Ellipse()
                    .frame(width: 180, height: 110)
                    .offset(x: 20, y: -140)
                    .rotationEffect(.degrees(25))
                Ellipse()
                    .frame(width: 180, height: 110)
                    .offset(x: -20, y: -140)
                    .rotationEffect(.degrees(-25))
            }
            .foregroundColor(Color(red: 219/255, green: 180/255, blue: 44/255))
            // front of head hair/bangs
            
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
