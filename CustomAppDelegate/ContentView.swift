//
//  ContentView.swift
//  CustomAppDelegate
//
//  Created by Jonn Alves on 11/03/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appDelegate: CustomAppDelegateForSwiftUI

    var body: some View {
        VStack {
            Text(appDelegate.date.formatted(date: .omitted, time: .standard))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
