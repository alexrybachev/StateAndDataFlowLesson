//
//  ContentView.swift
//  StateAndDataFlowLesson
//
//  Created by Aleksandr Rybachev on 19.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var timer = 3
    
    var body: some View {
        VStack {
            Text("\(timer)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(timer: $timer)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    
    @Binding var timer: Int
    
    var body: some View {
        Button(action: { timer -= 1}) {
            Text("Start")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        }
    }
}
