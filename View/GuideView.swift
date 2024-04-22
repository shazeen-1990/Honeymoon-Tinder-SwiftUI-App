//
//  GuideView.swift
//  Honeymoon
//
//  Created by Shazeen Thowfeek on 19/04/2024.
//

import SwiftUI

struct GuideView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment:.center,spacing: 20){
                HeaderComponent()
                
                Spacer(minLength: 10)
                Text("Get Started")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick perfect destination for your romantic honeymoon..!!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                VStack(alignment:.leading,spacing: 25){
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you like this destination? Touch the screen and swipe right.It will be saved to the fvourites",
                        icon: "heart.circle")
                    
                    GuideComponent(
                        title: "Dismiss",
                                   subtitle: "swipe left", description: "Would you rather skip this places?Touch the screen and swipe left.you will no longer see it. ",
                        icon: "xmark.circle"
                    )
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "Our selection of honeymoon resort is perfect setting for you to embark your new life together.",
                        icon: "checkmark.square"
                    )
                }
                
                
                Spacer(minLength: 10)
                
                Button(action: {
                    //action
                   // print("A button was tapped")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
            }
            .frame(minWidth: 0,maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
            
        }
        
    }
}

#Preview {
    GuideView()
}
