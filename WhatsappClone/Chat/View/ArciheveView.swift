//
//  Arciheve.swift
//  WhatsappClone
//
//  Created by Mert ATK on 13.07.2023.
//

import SwiftUI

struct ArciheveView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Bu sohbetler yeni mesajlar alındığında arşivde kalmaya devam eder. Değiştirmek için dokunun.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 18)
                    .font(.footnote)
                    .foregroundColor(.gray)
                Divider()
                List{
                    Section{
                        HStack{
                            Image("Pp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height:70)
                                .clipShape(Circle())
                            Spacer()
                                .frame(width: 10)
                            VStack(alignment:.leading){
                                Text("Mert")
                                    .bold()
                                Text("github.com/mertaince")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text("15:11")
                            
                        }.padding(.horizontal,2)
                    }
                }.listStyle(InsetListStyle())
                
                
            }
            .navigationBarTitle("Arşivlenmiş", displayMode: .inline)
            .toolbar{
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    }label:{
                        Text("Düzenle")
                    }
                }
            }
        }
    }
}

struct ArciheveView_Previews: PreviewProvider {
    static var previews: some View {
        ArciheveView()
    }
}
