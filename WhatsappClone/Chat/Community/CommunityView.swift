//
//  CommunityView.swift
//  WhatsappClone
//
//  Created by Mert ATK on 13.07.2023.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    Section{
                    HStack{
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(.gray)
                                        .frame(width: 50, height: 50)
                                    Image(systemName: "person.3.fill")
                                        .foregroundColor(.white)
                                    Image(systemName: "plus.circle.fill")
                                        .foregroundColor(Color(.systemBlue))
                                        .frame(width: 60, height: 60, alignment: .bottomTrailing)
                                }
                                Text("Yeni Topluluk")
                                    .bold()
                                Spacer()
                            }
                        }

                    }
                }
                Spacer()
            }
            .navigationTitle("Topluluklar")
           
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
