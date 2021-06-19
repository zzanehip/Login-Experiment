//
//  ContentView.swift
//  Snow Leopard Login
//
//  Created by Zane Kleinberg on 6/19/21.
//

import SwiftUI
import PureSwiftUITools

struct ContentView: View {
    var body: some View {
            GeometryReader { geometry in
                ZStack {
                    Image("Snow Leopard WP").resizable().scaledToFill().frame(width: geometry.size.width).edgesIgnoringSafeArea(.all)
                    login_window().frame(width: geometry.size.width/2.5, height: geometry.size.height/2)
                }
            }
    }
}

struct login_window: View {
    let gradient = LinearGradient([Color(red: 229/255, green: 229/255, blue: 229/255)], to: .trailing)
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle().fill(Color(red: 237/255, green: 237/255, blue: 237/255)).frame(width: geometry.size.width, height: geometry.size.height).shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 6)
                VStack {
                    Image("AppleLogo").resizable().scaledToFit().frame(width: 170).padding(.top, 30)
                    Text("Mac OS X").font(Font.custom("Lucida Grande Bold", size: 30)).foregroundColor(Color(red: 33/255, green: 33/255, blue: 33/255)).padding(.top, 10)
                    Text(UIDevice.current.name).font(Font.custom("Lucida Grande", size: 15)).foregroundColor(Color(red: 150/255, green: 144/255, blue: 141/255)).padding(.top, 1)
                    ZStack {
                    RoundedRectangle(cornerRadius: 3).ps_innerShadow(.fill(gradient), radius: 1.5, offset: CGPoint(0, 0.5))
                        HStack {
                            Spacer().frame(width: geometry.size.width/4.5)
                            VStack(alignment: .leading, spacing: 15) {
                                user_view(image: "Nest", title: "Zane's Account")
                                user_view(image: "Zen", title: "Other's Account")
                                
                            }
                        }
                    }.frame(width: geometry.size.width - 60, height: geometry.size.height/2.5).padding(.top, 10)
                    Spacer()
                    HStack {
                        Spacer()
                        bottom_button(image: "sleepN", title: "Sleep")
                        bottom_button(image: "restartN", title: "Restart")
                        bottom_button(image: "shutdownN", title: "Shut Down")
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct user_view: View {
    var image: String
    var title: String
    var body: some View {
        HStack {
            Image(image).resizable().scaledToFill().frame(width: 65, height: 65).shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 1)
            Spacer().frame(width: 10)
            Text(title).font(Font.custom("Lucida Grande", size: 16)).foregroundColor(Color.black)
            Spacer()
        }
    }
}

struct bottom_button: View{
    var image: String
    var title: String
    var body: some View {
        VStack {
            Image(image)
            Text(title).font(Font.custom("Lucida Grande", size: 13)).foregroundColor(Color.black)
        }.frame(width: 80)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
