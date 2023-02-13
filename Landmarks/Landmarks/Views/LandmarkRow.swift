//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Kauê Sales on 13/02/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
            LandmarkRow(landmark: landmarks[3])
        }
        .previewLayout(.sizeThatFits)
    }
}
