//
//  ContentView.swift
//  test_app
//
//  Created by Mac on 31/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Cupertino, CA").font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white).padding()
                VStack(spacing:8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180 , height: 180)
                    Text("76°").font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
            }
           
        }
       
    }
}

#Preview {
    ContentView()
}
