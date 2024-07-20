//
//  SplashScreen.swift
//  CrazyTodo
//
//  Created by julie ryan on 20/07/2024.
//

import SwiftUI

struct SplashScreen: View {
    @State var showSplashcreen = true
    var heigthSize = UIScreen.main.bounds.height / 3
    
    var body: some View {
        if showSplashcreen {
            VStack {
                Spacer()
                
                Text("Todo customisé")
                    .font(.title)
                    .foregroundStyle(.script)
                
                Image(systemName: "book.pages")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.script)
                
                Spacer()
                Spacer()
                
                Button("Passer Intro") {
                    showSplashcreen = false
                }
                .padding()
                .foregroundStyle(.script)
                
                Spacer()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    showSplashcreen = false
                }
            }
        } else {
            MenuView()
        }
    }
}

#Preview {
    SplashScreen()
}
