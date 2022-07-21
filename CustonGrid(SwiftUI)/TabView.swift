//
//  TabView.swift
//  CustonGrid(SwiftUI)
//
//  Created by  Sergey Yurtaev on 21.07.2022.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            VerticalGridView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("VerticalGridView")
                }
            
            HorizontalGridView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("HorizontalGridView")
                }
            
            CustomGridView(items: [11, 3, 7, 17, 5, 2, 1], columns: 3) { itemSize, item in
                Text("\(item)")
                    .frame(width: itemSize, height: itemSize)
            }
                .tabItem {
                    Image(systemName: "circle")
                    Text("CustomGridView")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
