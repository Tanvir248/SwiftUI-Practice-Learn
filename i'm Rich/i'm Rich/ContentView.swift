//
//  ContentView.swift
//  i'm Rich
//
//  Created by Tanvir Rahman on 19.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Color(red: 0.48, green: 0.48, blue: 0.69)
                .edgesIgnoringSafeArea(.all)
            VStack{
            Text("Love Everybody!")
            .font(.system(size: 40))
            .padding()
            .foregroundColor(.white)
                Image("Heart").resizable()
                    .aspectRatio(0.9, contentMode: .fit)
                    .frame(width: 440, height: 490, alignment: .center)
               // Image("Diamond")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
