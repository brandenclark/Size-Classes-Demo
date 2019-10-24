//
//  ContentView.swift
//  Size-Classes
//
//  Created by Branden Clark on 10/24/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        HStack(alignment: horizontalSizeClass == .compact ? .top : .bottom) {
            Image(systemName:"flame.fill")
            .imageScale(horizontalSizeClass == .compact ? .small : .large)
            .padding()
            VStack {
                HStack {
                    Text("Horizontal:")
                    if horizontalSizeClass == .compact {
                        Text("Compact")
                    } else {
                        Text("Regular")
                            .font(.largeTitle)
                    }
                }
                .padding()
                HStack {
                    Text("Vertical:")
                    Text(verticalSizeClass == .compact ? "Compact" : "Regular")
                        .font(verticalSizeClass == .regular ? .largeTitle : .body)
                }
                .padding()
            }
        }
        .border(Color.black, width: 5.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
