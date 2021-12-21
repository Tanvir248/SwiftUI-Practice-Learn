//
//  ContentView.swift
//  Tanvir Rahman
//
//  Created by Tanvir Rahman on 21.12.2021.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack{
            Color(red: 0.27, green: 0.74, blue: 0.20)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
            VStack{
                Image("Tanvir")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width:369, height: 239)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(){
                        Circle().stroke(Color.white, lineWidth: 5)
                    }

        Text("Md. Tanvir Rahman")
                .font(Font.custom("Lobster-Regular", size: 40))
                .bold()
            .foregroundColor(.black)
            Text("iOS Developer")
                .font(Font.custom("Pushster-Regular", size: 24))
                .bold()
            .foregroundColor(.black)
                Divider()
                Spacer()
                InfoView(text: "+880 1865 225 656", icon: "phone.fill")
                InfoView(text: "tanvir27.58@gmail.com", icon: "mail.fill")
              Spacer()
                HStack{
                    Button {
                        openURL(URL(string: "https://www.github.com/Tanvir248")!)
                    } label: {
                        HStack{
                   Image(systemName: "square.and.arrow.up.circle")
                            Text("My Github")
                            
                    }
                    }
                    
                    Button {
                        openURL(URL(string: "https://sites.google.com/view/md-tanvir-rahman/home")!)
                    } label: {
                        HStack{
                    Image(systemName: "person")
                            Text("My Portfolio")
                            
                    }
                    }
                    
                }
            }
           
        }
        

    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String
    let icon : String
    var body: some View {
        RoundedRectangle(cornerRadius: 35)
            .frame( height: 60)
            .foregroundColor(.white)
            .overlay(
                HStack{
                    
                    Image(systemName: icon)
                        .foregroundColor(.green)
                    Text(text)
                }).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    Divider()
    }
}
