//
//  InfoView.swift
//  Honeymoon
//
//  Created by Shazeen Thowfeek on 19/04/2024.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment:.center,spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                CreditsView()
                
                Spacer(minLength: 10)
                
                Button(action: {
                    //print("A button was tapped")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("continue".uppercased())
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
    InfoView()
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment:.leading,spacing: 10) {
            RowAppInfoView(ItemOne: "Application", Itemtwo: "Honeymoon")
            RowAppInfoView(ItemOne: "Compatibility", Itemtwo: "iphone and ipad")
            RowAppInfoView(ItemOne: "Developer", Itemtwo: "John/jane")
            RowAppInfoView(ItemOne: "Designer", Itemtwo: "Shazeen")
            RowAppInfoView(ItemOne: "Website", Itemtwo: "swiftuimasterclass.com")
            RowAppInfoView(ItemOne: "Version", Itemtwo: "1.0.0")
        }
    }
}

struct RowAppInfoView: View {
    var ItemOne: String
    var Itemtwo: String
    
    var body: some View {
        VStack {
            HStack{
                Text(ItemOne).foregroundColor(.gray)
                Spacer()
                Text(Itemtwo)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment:.leading,spacing: 10) {
            HStack{
                Text("Photos")
                    .foregroundColor(.gray)
                Spacer()
                Text("Unspalash")
            }
            Divider()
            Text("Phootographers").foregroundColor(.gray)
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        }
    }
}
