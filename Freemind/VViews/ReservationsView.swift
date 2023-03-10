//
//  ReservationsView.swift
//  Freemind
//
//  Created by Nick Gordon on 1/23/23.
//

import SwiftUI
import CloudKit

struct ReservationsView: View {
    
   // @ObservedObject var test:User
  //  @StateObject var user = UserListViewModel()
  //  @ObservedObject var workspace:WorkSpace
    @ObservedObject var vm: TestApi
    
    
//    AsyncImage(url: URL(string: imageURL)) { image in
//        image
//            .resizable()
//            .scaledToFill()
//    } placeholder: {
//        Color.purple.opacity(0.1)
//    }
//    .frame(width: 300, height: 500)
//    .cornerRadius(20)

   

    
    var body: some View {
        VStack {
            Text("test \(vm.testworkspaces.count)")
            ScrollView {
                LazyVStack {
                    ForEach(vm.testworkspaces) { workSpace in
                        VStack {
                            Text(workSpace.name ?? "nothing")
                        
//
//                            AsyncImage(
//                                url: URL(string: workSpace.imageURL ?? "nil"), scale: 3.0)
//
//
//                                .aspectRatio(contentMode: .fit)
//                                .frame(maxWidth: 100, maxHeight: 100)
                            
                            AsyncImage(url: URL(string: workSpace.imageURL ?? "nil")) { test in
                                test.image?
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .cornerRadius(10)
                                
                            }
                                
                            
                        }
                        
                        
                    }
                }
                //.onAppear(perform: vm.getPosts)
            }
            
           
        }
//        .task {
//            do {
//                try await workspace.fetch()
//            } catch {
//                print("error")
//            }
//        }
        
//        NavigationView {
//
//            ZStack {
//
//                appColors.primaryColorOne
//                    .ignoresSafeArea()
//
//                VStack {
//
//                    TextField("Type here", text: $user.text)
//
//                    Button {
//
//                        user.addButtonPressed(name: "TEST")
//
//                    } label: {
//                        Text("save")
//                            .foregroundColor(appColors.secondaryColorOne)
//                    }
//                    Text("Permission: \(test.permissionStatus.description)")
//                    Text("is signed in: \(test.isSignedInToiCloud.description)")
//
//                                    List {
//                                        ForEach(user.fruits, id: \.self) { fruit in
//                                            HStack {
//                                                Text(fruit.name)
//                                                Text(fruit.description)
//                                            }
//
//
//                                        }
//                                    }
//
//                }.navigationTitle("\(test.firstName) Reservations")
//            }
//        }
    }
}

struct ReservationsView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationsView(vm: TestApi())
    }
}
