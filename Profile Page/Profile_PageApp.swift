//
//  Profile_PageApp.swift
//  Profile Page
//
//  Created by Sara Alsagaf on 07/03/1446 AH.
//

import SwiftUI

@main
struct Profile_PageApp: App {
    var body: some Scene {
        WindowGroup {
            @State  var Email = ""
            @State  var Name = ""
            @State  var Bio = ""
            @State  var Education = ""
            @State  var Skills = ""

            // ...

            ContentView(Email: $Email, Name: $Name, Bio: $Bio, Educaion: $Education, Skills: $Skills)
        }
    }
}
