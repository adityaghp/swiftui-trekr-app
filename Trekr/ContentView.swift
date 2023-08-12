//
//  ContentView.swift
//  Trekr
//
//  Created by Aditya Ghorpade on 11/01/23.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you Know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            NavigationStack{
                ContentView(location: Locations().primary)
            }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
            
            NavigationStack {
                WorldView()
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("Locations")
            }
            
            NavigationStack{
                TipsView()
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Tips")
            }
        }
    }
}
