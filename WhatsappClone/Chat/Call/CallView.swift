//
//  CallView.swift
//  WhatsappClone
//
//  Created by Mert ATK on 13.07.2023.
//

import SwiftUI

struct CallView: View {
    @State private var call = ""
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    ZStack{
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 40, height: 40)
                        Button{
                            
                        }label:{
                            Image(systemName: "link")
                        }
                        
                    }
                    VStack(alignment: .leading){
                        Button{
                            
                        }label:{
                            Text("Arama Bağlantısı Oluştur")
                        }
                        Text("WhatsApp aramanız için bağlantı paylaşın")
                            .foregroundColor(.gray)
                    }
                    
                }
                Divider()
                Text("En Son")
                    .bold()
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.horizontal,22)
                List{
                    Section{
                        HStack{
                            Image("Pp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.horizontal,12)
                            VStack(alignment:.leading){
                                Text("Mert")
                                    .bold()
                                HStack{
                                    Image(systemName:"phone")
                                    Text("Giden")
                                }.foregroundColor(.gray)
                            }
                            Spacer()
                            Text("15:11")
                            Button{
                                
                            }label:{
                                Image(systemName: "info.circle")
                                    .foregroundColor(Color(.systemBlue))
                            }
                            
                        }
                    }
                    
                    Section {
                        HStack{
                            Image("Pp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.horizontal,12)
                            VStack(alignment:.leading){
                                Text("Mert")
                                    .bold()
                                    .foregroundColor(.red)
                                HStack{
                                    Image(systemName:"phone")
                                    Text("Cevapsız")
                                }.foregroundColor(.gray)
                            }
                            Spacer()
                            Text("15:11")
                            Button{
                                
                            }label:{
                                Image(systemName: "info.circle")
                                    .foregroundColor(Color(.systemBlue))
                            }
                            
                        }
                    }
                }.listStyle(InsetListStyle())
                Spacer()
            }
            .listStyle(.grouped)
            .navigationTitle("Aramalar")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    }label:{
                        Image(systemName: "phone.badge.plus")
                    }
                }
                
                ToolbarItem(placement: .principal){
                    Picker("a", selection: $call){
                        Text("Tümü").tag(0)
                        Text("Cevapsız").tag(1)
                    }.frame(width: 200)
                        .pickerStyle(.segmented)
                }
                
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        
                    }label:{
                        Text("Düzenle")
                    }
                }
                
            }.accessibilityAddTraits(.isHeader)
        }
    }
}

struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
