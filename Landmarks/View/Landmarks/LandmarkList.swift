//
//  LandmarkList.swift
//  Landmarks
//
//  Created by saber on 2021/6/9.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    // 只读
    var filteredLandmarks:[Landmark] {
        // 尾闭包
        modelData.landmarks.filter { landmark in
            ( !showFavoritesOnly || landmark.isFavorite )
        }
    }
    
    var body: some View {
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
        NavigationView {
//            List (filteredLandmarks) { landmark in
            List {
                Toggle(isOn: $showFavoritesOnly) {
                       Text("Favorites only")
                 }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                                       LandmarkRow(landmark: landmark)
                    }
                }
              }
//            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
        
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                    LandmarkList()
//                        .previewDevice(PreviewDevice(rawValue: deviceName))
//                        .previewDisplayName(deviceName)
//                }
    }
}
