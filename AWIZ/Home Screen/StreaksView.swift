//
//  StreaksView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 12/11/22.
//

import SwiftUI

struct StreaksView: View {
    @State var currentStreak: Int
    @State var highestStreak: Int
    
    var body: some View {
        VStack (alignment: .leading) {
            Rectangle()
                .cornerRadius(20)
                .frame(width: 340, height: 100)
                .shadow(radius: 5)
                .foregroundColor(.white)
            
            Text("Current Streak: \(currentStreak) days")
                .font(.system(size: 20))
                .offset(x: 20, y: -100)
                
            
            Text("Highest Streak: \(highestStreak) days")
                .font(.system(size: 20))
                .offset(x: 20, y: -95)
                
            
            ProgressView(value: 10, total: 25)
                .padding()
                .frame(width: 340)
                .scaleEffect(x:1, y: 4)
                .tint((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .cornerRadius(20)
                .offset(x: 0, y: -110)
                
        }
    }
}

struct StreaksView_Previews: PreviewProvider {
    static var previews: some View {
        StreaksView(currentStreak: 10, highestStreak: 40)
    }
}
