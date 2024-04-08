//
//  ContentView.swift
//  test_app
//
//  Created by Mac on 31/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                Text("Cupertino, CA").font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.white).padding()
                VStack(spacing:8){
                    Image(systemName: 
                            isNight ? "moon.stars.fill":
                            "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180 , height: 180)
                    Text("76°").font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20){
                    WeatherDayView(
                    dayofWeek: "TUE", imageName: "cloud.sun.fill", temperature: "72"
                    )
                    WeatherDayView(
                    dayofWeek: "WED", imageName: "sun.max.fill", temperature: "88"
                    )
                    WeatherDayView(
                    dayofWeek: "THU", imageName: "wind.snow", temperature: "55"
                    )
                    WeatherDayView(
                    dayofWeek: "FRI", imageName: "sunset.fill", temperature: "60"
                    )
                    WeatherDayView(
                    dayofWeek: "SAT", imageName: "snow", temperature: "25"
                    )
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    Text("Change Day Time").frame(width: 280, height: 50)
                        .background(Color.white.gradient)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
                
            }
        }
       
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayofWeek: String
    var imageName: String
    var temperature: String
    var body: some View {
        VStack{
            Text(dayofWeek).font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundStyle(.mint, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 40)
            Text("\(temperature)°").font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
   var isNight: Bool
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray :  Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
