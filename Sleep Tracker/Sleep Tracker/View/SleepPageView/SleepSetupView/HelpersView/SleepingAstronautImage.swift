//
//  SleepingAstronautImage.swift
//  Sleep Tracker
//
//  Created by Egor Mesheryakov on 17.05.23.
//

import SwiftUI

/**
 A view create an image with an astronaut.
 */
struct SleepingAstronautImage: View {
    var body: some View {
        Image.AppImage.sleepingAstronaut
            .resizable()
            .frame(width: 150, height: 150)
    }
}

struct SleepingAstronautImage_Previews: PreviewProvider {
    static var previews: some View {
        SleepingAstronautImage()
    }
}
