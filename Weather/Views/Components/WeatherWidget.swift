//
//  WeatherWidget.swift
//  Weather
//
//  Created by dxd on 2023/6/13.
//

import SwiftUI

struct WeatherWidget: View {
    var forecast: Forecast
//    var forecastPeriod: ForecastPeried
    var body: some View {
        ZStack(alignment: .bottom) {
            TiXingShape()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342,height: 174)
            HStack (alignment: .bottom){
                VStack(alignment: .leading, spacing: 8) {
                    Text("\(forecast.temperature)°")
                        .font(.system(size: 64))
                    VStack(alignment: .leading, spacing: 2) {
                        Text("H:\(forecast.high)° L:\(forecast.low)°")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                        Text("\(forecast.location)")
                    }
                    
                }
                Spacer()
                VStack (alignment: .trailing, spacing: 0){
                    Image("\(forecast.icon) large")
                    Text("\(forecast.weather.rawValue)")
//                        .padding(.bottom, 20)
                        .padding(.trailing, 20)
                }
            }
            .padding(.bottom, 20)
            .padding(.leading,20)
            
        }
        .frame(width: 342, height: 184, alignment: .bottom)
    }
}

struct WeatherWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidget(forecast: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}
