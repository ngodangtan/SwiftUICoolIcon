//
//  ContentView.swift
//  SwiftUICoolIcon
//
//  Created by Ngo Dang tan on 03/02/2021.
//

import SwiftUI
import SwiftUIFontIcon

struct ContentView: View {
    @State var updateBg: Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    HStack {
                        Text("Material Icon (Assistant)")
                        Spacer()
                        FontIcon.text(.materialIcon(code: .assistant), fontsize: 45, color:  .blue)
                    }.padding()
                    
                    HStack {
                        Text("Material Icon (Assistant)")
                        Spacer()
                        FontIcon.button(.ionicon(code: .ios_add_circle), action: {
                            
                            self.updateBg.toggle()
                        }, padding: 0, fontsize: 45, color: .pink)
                    }.padding()
                    
                    HStack {
                        Text("Material Icon (Assistant)")
                        Spacer()
                        FontIcon.button(.ionicon(code: .ios_add_circle), action: {
                            
                            self.updateBg.toggle()
                        }, padding: 0, fontsize: 45, color: .pink)
                    }.padding()
                }
            }
            .background(updateBg ? Color.pink : Color(.systemBackground))
            .navigationTitle("Custom Icons")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
