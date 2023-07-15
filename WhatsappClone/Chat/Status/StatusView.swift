//
//  StatusView.swift
//  WhatsappClone
//
//  Created by Mert ATK on 13.07.2023.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        NavigationStack{
            VStack{
               
                List{
                    Section{
                        HStack{
                            ZStack{
                                Image("Pp")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color(.systemBlue))
                                    .frame(width: 70, height: 55, alignment: .bottomTrailing)
                            }
                            VStack(alignment: .leading){
                                Text("Durumum")
                                    .bold()
                                Text("Durumuma ekle")
                                    .foregroundColor(Color(.systemGray3))
                            }
                            Spacer()
                            ZStack{
                                Circle()
                                    .fill(Color(.systemGray5))
                                    .frame(width: 35, height: 50)
                                Button{
                                    
                                }label:{
                                    Image(systemName: "camera.fill")
                                }
                                
                            }
                            ZStack{
                                Circle()
                                    .fill(Color(.systemGray5))
                                    .frame(width: 35, height: 50)
                                Button{
                                    
                                }label:{
                                    
                                    Image(systemName: "pencil")
                                }
                                
                            }
                            
                        }.padding(.horizontal,15)
                        
                    }
                    
                    
                    Section{
                        HStack{
                            Image("Pp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [30,6]))
                                        .foregroundColor(.blue)
                                        .frame(width: 70, height: 80))
                            Spacer()
                                .frame(width: 13)
                            
                            VStack(alignment: .leading){
                                Text("Mert")
                                    .bold()
                                Text("1s önce")
                                    .foregroundColor(Color(.systemGray3))
                            }
                            Spacer()
                            
                            
                        }.padding(.horizontal,22)
                        
                        HStack{
                            Image("Pp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(Color.blue, lineWidth: 2)
                                        .frame(width: 70, height: 70))
                            Spacer()
                                .frame(width: 13)
                            
                            VStack(alignment: .leading){
                                Text("Mert")
                                    .bold()
                                Text("1s önce")
                                    .foregroundColor(Color(.systemGray3))
                            }
                            Spacer()
                            
                            
                        }.padding(.horizontal,22)
                        
                    } header:{
                        Text("SON GÜNCELLEMELER")
                    }
                    
                }.listStyle(GroupedListStyle())
                
                Spacer()
            }
            .navigationTitle("Durum")
            
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        
                    }label:{
                        Text("Gizlilik")
                    }
                }
            }
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
