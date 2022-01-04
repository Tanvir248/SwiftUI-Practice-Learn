//
//  ContentView.swift
//  Shongbad
//
//  Created by Tanvir Rahman on 22.12.2021.
//

import SwiftUI

struct ContentView: View {
 @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                VStack{
                Text(post.title)
                    Text("Times : \(post.created_at)")
                }
                .navigationBarTitle("Bulletin Board")
        }
            .onAppear {
                networkManager.fetchData()
            }
    }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

