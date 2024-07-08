//  ContentView.swift
//  SlideBar
//  Created by Sumit on 08/07/24.

import SwiftUI

 struct ContentView: View {
    
    @State var isTabSelectedIncomings:Bool = false
    @State var isTabSelectedOutgoings:Bool = false
    
    var body: some View {
        GeometryReader { proxy in
           HStack {
                Rectangle()
                    .overlay(content: {
                HStack {
                    HStack(alignment:.center) {
                        Button {
                            isTabSelectedIncomings.toggle()
                            isTabSelectedOutgoings.toggle()
                        } label: {
                            Spacer()
                            Text("Incomings")
                                .foregroundStyle(.white)
                                .font(.system(size: 16, weight: .bold, design: .default))
                            Spacer()
                        }
                            Spacer()
                     }.frame(width:proxy.size.width/2 - 30,height:42)
                      .background(isTabSelectedIncomings == true ?.red : .clear)
                      .clipShape(RoundedRectangle(cornerRadius: 11))
                   HStack {
                          Button {
                              isTabSelectedIncomings.toggle()
                              isTabSelectedOutgoings.toggle()
                          } label: {
                              Text("Outgoings")
                                  .foregroundStyle(.white)
                                  .font(.system(size: 14, weight: .bold, design: .default))
                          }
                        }.frame(width:proxy.size.width/2 - 30,height:40)
                         .background(isTabSelectedOutgoings == true ?.blue : .clear)
                         .clipShape(RoundedRectangle(cornerRadius: 11))
                  }.padding([.leading,.trailing])
              })
            }.cornerRadius(18.0)
             .padding([.leading,.trailing])
             .frame(width:proxy.size.width,height:60)

        }.onAppear(perform: {
            isTabSelectedIncomings = true
        })
    }
}

#Preview {
    ContentView()
}
