//
//  ForecastCard.swift
//  Weather
//
//  Created by dxd on 2023/6/12.
//

import SwiftUI

struct ForecastCard: View {
    var forecast: Forecast
    var forecastPeriod: ForecastPeried
    var isActive: Bool {
        if forecastPeriod == ForecastPeried.hourly {
            let isHour = Calendar.current.isDate(.now, equalTo: forecast.date, toGranularity: .hour)
            return isHour
        } else {
            let isDay = Calendar.current.isDate(.now, equalTo: forecast.date, toGranularity: .day)
            return isDay
        }
    }
    var body: some View {
        ZStack {
//            卡片
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.forecastCardBackground.opacity(isActive ? 1 : 0.2))
                .frame(width: 60,height: 146)
                .shadow(color: .black.opacity(0.25), radius: 10, x: 5, y: 4)
                .overlay {
                    RoundedRectangle(cornerRadius: 30)
                        .strokeBorder(.white.opacity(isActive ? 0.5 : 0.2))
                        .blendMode(.overlay)
                }
                .innerShadow(shape: RoundedRectangle(cornerRadius: 30), color: .white.opacity(0.25),lineWidth: 1,offsetX: 1,offsetY: 1,blur: 0,blendMode: .overlay)
            VStack(spacing: 16){
                Text(forecast.date, format: forecastPeriod == ForecastPeried.hourly ? .dateTime.hour() : .dateTime.weekday())
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(.white)
                VStack(spacing: -4) {
                    //图标
                    Image("\(forecast.icon) small")
                    //降雨量
                    Text(forecast.probability, format: .percent)
                        .font(.footnote.weight(.semibold))
                        .foregroundColor(Color.probabilityText)
                        .opacity(forecast.probability > 0 ? 1 : 0)
                }
                .frame(height: 42)
                
                //温度
                Text("\(forecast.temperature)°")
                    .font(.title3)
            }
            .padding(.horizontal,8)
            .padding(.vertical, 16)
            .frame(width: 60,height: 146)
        }
    }
}

struct ForecastCard_Previews: PreviewProvider {
    static var previews: some View {
        ForecastCard(forecast: Forecast.hourly[0], forecastPeriod: .hourly)
    }
}
