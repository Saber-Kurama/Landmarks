//
//  ContentView.swift
//  Landmarks
//
//  Created by saber on 2021/6/2.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }
    var body: some View {
//        VStack {
//            MapView().frame(height: 300)
//            CircleImage()
//                .offset(y: -130)
//                .padding(.bottom, -130)
//            VStack(alignment: .leading) {
//                Text("Turtle Rock")
//                    .font(.title)
//                HStack {
//                    Text("Joshua Tree National Park")
//                    Spacer()
//                    Text("California")
//                }
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//
//                Divider()
//                Text("About Turtle Rock")
//                    .font(.title2)
//                Text("Descriptive text goes here.")
//            }
//            .padding()
//            Spacer()
//        }
//        print("cesjo")
//        print(landmarks)
//        print(log)
//        return Text("saber")
//        return LandmarkList()
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
