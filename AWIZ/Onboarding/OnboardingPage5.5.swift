//
//  OnboardingPage5.5.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage5_5: View {
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Each exercise plan has a different level of difficulty, the description of each exercise plan will tel you the difficulty level. ")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all))
    }
}


struct OnboardingPage5_5_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage5_5()
    }
}
