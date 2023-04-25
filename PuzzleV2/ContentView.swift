//
//  ContentView.swift
//  PuzzleV2
//
//  Created by Jude Sztraicher on 4/21/23.
//

import SwiftUI
import Foundation

struct ContentView: View{
    var body: some View {
        ZStack
        {
            DragableImage(imageName: "1", EndLocation: CGPointMake(100, -50))
            DragableImage(imageName: "2", EndLocation: CGPointMake(50, -50))
            DragableImage(imageName: "3", EndLocation: CGPointMake(0, -50))
            DragableImage(imageName: "4", EndLocation: CGPointMake(100, 0))
            DragableImage(imageName: "5", EndLocation: CGPointMake(50, 0))
            DragableImage(imageName: "6", EndLocation: CGPointMake(0,0))
            DragableImage(imageName: "7", EndLocation: CGPointMake(100,50))
            DragableImage(imageName: "8", EndLocation: CGPointMake(50,50))
            DragableImage(imageName: "9", EndLocation: CGPointMake(0,50))
        }
    }
}

