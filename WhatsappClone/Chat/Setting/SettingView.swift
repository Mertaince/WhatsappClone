//
//  SettingView.swift
//  WhatsappClone
//
//  Created by Mert ATK on 13.07.2023.
//

import SwiftUI

struct SettingView: View {
    @State private var search = ""
    var body: some View {
        NavigationStack{
            
            List{
                Section{
                    HStack{
                        Image("Pp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text("Mert")
                                .font(.system(size: 22))
                            Text("github.com/mertaince")
                                .foregroundColor(.secondary)
                            
                        }.padding(.leading,9)
                        Spacer()
                        ZStack{
                            Circle()
                                .fill(Color(.systemGray3))
                                .frame(width: 30, height: 30)
                            Button{
                                
                            }label:{
                                Image(systemName:"qrcode")
                                    
                            }
                            
                        }
                    }
                    
                    HStack{
                        NavigationLink{
                            
                        }label:{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.systemBlue))
                                    .frame(width: 30, height: 30)
                                Image(systemName: "person.and.background.dotted")
                                    .foregroundColor(.white)
                            }
                            Text("Avatar")
                                .padding(.leading,9)
                            }
                        }
                        
                    
                }.padding(.vertical,1)
                
                Section{
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemYellow))
                                .frame(width: 30, height: 30)
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                        }
                        Text("Yıldızlı Mesajlar")
                            .padding(.leading,9)
                        }
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("Cihazlar"))
                                .frame(width: 30, height: 30)
                            Image(systemName: "laptopcomputer")
                                .foregroundColor(.white)
                        }
                        Text("Bağlı Cihazlar")
                            .padding(.leading,9)
                        }
                    
                }
                
                Section{
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.systemBlue))
                                .frame(width: 30, height: 30)
                            Image(systemName: "key")
                                .foregroundColor(.white)
                        }
                        Text("Hesap")
                            .padding(.leading,9)
                        }
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("Gizlilik"))
                                .frame(width: 30, height: 30)
                            Image(systemName: "lock.fill")
                                .foregroundColor(.white)
                        }
                        Text("Gizlilik")
                            .padding(.leading,9)
                        }
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("Sohbetler"))
                                .frame(width: 30, height: 30)
                            Image(systemName: "bubble.left")
                                .foregroundColor(.white)
                        }
                        Text("Sohbetler")
                            .padding(.leading,9)
                        }
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("Bildirimler"))
                                .frame(width: 30, height: 30)
                            Image(systemName: "rectangle.and.paperclip")
                                .foregroundColor(.white)
                        }
                        Text("Bildirimler")
                            .padding(.leading,9)
                        }
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("Sohbetler"))
                                .frame(width: 30, height: 30)
                            Image(systemName: "laptopcomputer")
                                .foregroundColor(.white)
                        }
                        Text("Saklama Alanı ve Veriler")
                            .padding(.leading,9)
                        }
                }
                
                Section{
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                                .frame(width: 30, height: 30)
                            Image(systemName: "info")
                                .foregroundColor(.white)
                        }
                        Text("Yardım")
                            .padding(.leading,9)
                        }
                    
                    NavigationLink{
                        
                    }label:{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.pink)
                                .frame(width: 30, height: 30)
                            Image(systemName: "heart.fill")
                                .foregroundColor(.white)
                        }
                        Text("Arkadaşına Öner")
                            .padding(.leading,9)
                        }
                }
            }
 
            .listStyle(GroupedListStyle())
            .searchable(text: $search, prompt: "Ara")
            .navigationTitle("Ayarlar")
                .navigationBarTitleDisplayMode(.large)
        }
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
