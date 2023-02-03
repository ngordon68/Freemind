//
//  TabView.swift
//  Freemind
//
//  Created by Nick Gordon on 1/25/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var test:User = User()
    @StateObject var workSpace = WorkSpace(roomName: "Coffe Bean", roomDescription: "Place to study", roomPicture: "Coffee")
    @StateObject var workSpaceFavorite = WorkSpaceFavorites()
 
    var body: some View {
        
            TabView {
                ContentView(workSpace: workSpace, workSpaceFavorite: workSpaceFavorite)
                    .tabItem {
                        Label("Received", systemImage: "list.bullet.below.rectangle")
                    }
                ReservationsView()
                    .badge(5)
                    .tabItem {
                        Label("Real Time \n Feed", systemImage: "calendar")
                    }
                FavoritesView(workSpaceFavorite: workSpaceFavorite, workSpace: workSpace)
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
            }
        }
    }


struct TabView_Previews: PreviewProvider {
    @EnvironmentObject var workSpace: WorkSpace
   
    static var previews: some View {
        MainView()
         
    }
}