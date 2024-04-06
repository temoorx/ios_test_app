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
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
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
                    print("tapped..")
                }label: {
                    Text("Change Day Time").frame(width: 280, height: 50)
                        .background(Color.white)
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
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 40)
            Text("\(temperature)°").font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
