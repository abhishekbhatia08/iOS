//
//  ContentView.swift
//  WeatherNow
//
//  Created by Abhishek Bhatia on 17/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeView(viewModel: HomeViewModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
