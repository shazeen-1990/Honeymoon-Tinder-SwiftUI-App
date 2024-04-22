//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Shazeen Thowfeek on 18/04/2024.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showGuideView: Bool
    @Binding var showInfoview: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        
        HStack {
            Button(action: {
               // print("Information")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoview.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24,weight: .regular))
            })
            .accentColor(.primary)
            .sheet(isPresented: $showInfoview, content: {
                InfoView()
            })
            Spacer()
            Image("logo-honeymoon-pink-dark")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            
            Button(action: {
                //print("Guide")
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24,weight: .regular))
            })
            .accentColor(.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    static var previews: some View{
        HeaderView(showGuideView: $showGuide, showInfoview: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
