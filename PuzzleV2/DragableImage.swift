//
//  DragableImage.swift
//  Puzzle V2
//
//  Created by Jude Sztraicher on 4/21/23.
//
import SwiftUI

struct DragableImage: View {
    
    
private let imageSize: CGFloat = 120
@State private var offset = CGSize.zero
var imageName: String
var endLocation: CGPoint


init(imageName: String, EndLocation:CGPoint){
    self.offset = CGSize(
        width: Int.random(in: -120...120),
        height: Int.random(in: -120...120)
    )
    self.imageName = imageName
    self.endLocation = EndLocation
    
}
var dragGesture: some Gesture {
DragGesture()
    .onChanged { value in
        
    var x = value.startLocation.x + value.translation.width - imageSize/2
    var y = value.startLocation.y + value.translation.height - imageSize/2

    if abs(x - endLocation.x) < 20 && abs(y - endLocation.y) < 20 {
        x = endLocation.x
        y = endLocation.y
    }
    
    offset = CGSize (
        width: x,
        height: y
    )
    }
}
var body: some View {
    Image(imageName)
        .resizable()
        .frame(width: imageSize, height: imageSize)
        .offset(offset)
        .gesture(dragGesture)
}
}

