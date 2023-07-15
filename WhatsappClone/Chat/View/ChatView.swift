//
//  ChatView.swift
//  WhatsappClone
//
//  Created by Mert ATK on 13.07.2023.
//

import SwiftUI

struct ChatView: View {
    @State private var searchable = ""
    var body: some View {
        NavigationStack{
            VStack{

                HStack{
                    Button{
                        
                    }label:{
                        Text("Toplu Mesaj Listeleri")
                    }
                    Spacer()
                    Button{
                        
                    }label:{
                        Text("Yeni Grup")
                    }
                }.padding(.horizontal,22)
                Divider()
                
                List{
                    Section{
                        HStack{
                            Spacer()
                                .frame(width: 1)
                            NavigationLink(destination: ArciheveView()){
                                HStack{
                                    Image(systemName: "trash")
                                        .padding(.horizontal,15)
                                    Text("Arşivlenmiş")
                                        .bold()
                                    Spacer()
                                        .frame(width: 120)
                                    Text("2")
                                        .frame(maxWidth: .infinity, alignment: .topLeading)
                                }
                            }.padding(.trailing,-300)
                                
                        
                    
                        }.padding(.horizontal,22)
                        
                        
                        
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
                                    .foregroundColor(.red)
                                Text("github.com/mertaince")
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text("15:11")
                            
                        }.padding(.horizontal,2)
                        
                    }
                }.listStyle(InsetListStyle())
                
                   
                    .searchable(text: $searchable, prompt: "Ara")
                    .navigationTitle("Sohbetler")
                    .navigationBarBackButtonHidden(true)
                
                Spacer()
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        
                    }label:{
                        Text("Düzenle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack{
                        Button{
                            
                        }label:{
                            Image(systemName: "camera")
                        }
                        
                        Button{
                            
                        }label:{
                            Image(systemName: "square.and.pencil")
                        }
                    }
                    
                }
                
            }
            
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
