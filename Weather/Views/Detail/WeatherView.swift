//
//  WeatherView.swift
//  Weather
//
//  Created by dxd on 2023/6/13.
//

import SwiftUI

struct WeatherView: View {
    @State private var searchText = ""
    var searchResults: [Forecast] {
        if searchText.isEmpty {
            return Forecast.cities
        } else {
            return Forecast.cities.filter { $0.location.contains(searchText) }
        }
    }
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            ScrollView (showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(searchResults) { cities in
                        WeatherWidget(forecast: cities)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay {
            NavigationBar(searchText: $searchText)
        }
        .navigationBarHidden(true)
//        .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Search a city or a weather")
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeatherView()
                .preferredColorScheme(.dark)
        }
    }
}
