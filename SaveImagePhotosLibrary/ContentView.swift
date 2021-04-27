//
//  ContentView.swift
//  SaveImagePhotosLibrary
//
//  Created by 米国梁 on 2021/4/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button(action: {
            
            // write to photos library and it will ask for permission only at the first time
            UIImageWriteToSavedPhotosAlbum(image(), nil, nil, nil)
        }, label: {
            Text("Save a black rectangle image to photos library")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
        })
        
    }
    
    // Create a simple image
    private func image() -> UIImage {
        
        UIGraphicsImageRenderer(size: CGSize(width: 100, height: 100)).image { ctx in
            let bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
            ctx.cgContext.setFillColor(UIColor.yellow.cgColor)
            ctx.fill(bounds)
            ("I am the fancy image you just created" as NSString).draw(in: bounds, withAttributes: nil)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
