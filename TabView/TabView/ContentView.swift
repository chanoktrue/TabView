//
//  ContentView.swift
//  TabView
//
//  Created by Thongchai Subsaidee on 23/6/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        
        ZStack {
            
            Color.red
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            selected = selected == 0 ? 1 : 0
                        }
                    }, label: {
                        Text(">>")
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            selected = selected == 0 ? 1 : 0
                        }
                    }, label: {
                        Text("<<")
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                }
            
                TabView(selection: $selected) {
                    FirstView()
                        .tag(0)
                    SecondView()
                        .tag(1)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            }
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstView: View {
    var body: some View {
        ZStack {
            
            Color.orange

            
            Text("Fist view")
        }
    }
}

struct SecondView: View {
    var body: some View {
        
        ZStack {
        
            Color.green
                
            
            Text("Second view")
        }
    }
}
