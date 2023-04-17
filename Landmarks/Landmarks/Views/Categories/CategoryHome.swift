//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Kaue Sousa on 17/04/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    if let items = modelData.categories[key] {
                        CategoryRow(categoryName: key, items: items)
                    }
                }
            }
            .navigationTitle("Featured")
            .listStyle(.inset)
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
