//
//  ContentView.swift
//  reel
//
//  Created by Kekko Paciello on 13/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Header()
            
            Text("Discover your best furniture")
                .bold()
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Search()
            
            Categories()
            
            HStack{
                Text("Popular")
                    .bold()
                    .font(.title2)
                
                Spacer()
                
                Text("View all")
                    .bold()
                    .font(.headline)
                    .foregroundColor(.orange)
            }
            .padding()
            
            Products()
            


            Spacer()
            
            HStack(spacing: 50){
                HStack{
                    Image(systemName: "house")
                    Text("Home")
                }
                .font(.headline)
                .foregroundColor(.orange)
                .padding(.horizontal)
                .padding(.vertical, 6)
                .background(RoundedRectangle(cornerRadius: 12).foregroundColor(Color.orange.opacity(0.2)))
                
                Image(systemName: "person.fill")
                    .font(.headline)
                    .foregroundColor(Color.gray.opacity(0.6))
                
                Image(systemName: "cart.fill")
                    .font(.headline)
                    .foregroundColor(Color.gray.opacity(0.6))
                
                Image(systemName: "map")
                    .font(.headline)
                    .foregroundColor(Color.gray.opacity(0.6))

            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack{
            Image(systemName: "text.alignright")
                .padding()
                .background(RoundedRectangle(cornerRadius: 12.0).stroke(Color.gray.opacity(0.2), lineWidth: 3))
            Spacer()
        }
        .padding()
    }
}

struct Search: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .padding()
            .frame(height: 100)
            .foregroundColor(Color.secondary.opacity(0.2))
            .overlay(HStack{
                Image(systemName: "magnifyingglass")
                Text("Search")
                Spacer()
            }.padding(30).foregroundColor(.gray).font(.title3))
    }
}

struct Categories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack{
                Text("Chair")
                    .foregroundColor(.white)
                    .frame(height: 60)
                    .padding(.horizontal, 26)
                    .background(
                        RoundedRectangle(cornerRadius: 12.0)
                            .foregroundColor(.orange)
                            .foregroundColor(Color.secondary.opacity(0.2))
                        
                    )
                
                Text("Sofa")
                    .foregroundColor(.gray)
                    .frame(height: 60)
                    .padding(.horizontal, 26)
                    .background(
                        RoundedRectangle(cornerRadius: 12.0)
                            .foregroundColor(Color.secondary.opacity(0.2))
                        
                    )
                
                Text("Comforts")
                    .foregroundColor(.gray)
                    .frame(height: 60)
                    .padding(.horizontal, 26)
                    .background(
                        RoundedRectangle(cornerRadius: 12.0)
                            .foregroundColor(Color.secondary.opacity(0.2))
                        
                    )
                
                Text("Cupboard")
                    .foregroundColor(.gray)
                    .frame(height: 60)
                    .padding(.horizontal, 26)
                    .background(
                        RoundedRectangle(cornerRadius: 12.0)
                            .foregroundColor(Color.secondary.opacity(0.2))
                        
                    )
            }
        })
        .padding()
    }
}

struct Products: View {
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 160, height: 220, alignment: .center)
                    .foregroundColor(Color.gray.opacity(0.2))
                Image("1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .overlay(VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 12)
                    .padding(5)
                    .frame(height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .overlay(HStack(alignment: .bottom, spacing: 20){
                        VStack(alignment: .leading){
                            Text("Wood chair")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text("$80.00")
                                .bold()
                        }
                        
                        Circle()
                            .foregroundColor(.orange)
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(Image(systemName: "plus").foregroundColor(.white))
                    })
            })
            
            Spacer()
            
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 160, height: 220, alignment: .center)
                    .foregroundColor(Color.gray.opacity(0.2))
                Image("2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .overlay(VStack{
                Spacer()
                RoundedRectangle(cornerRadius: 12)
                    .padding(5)
                    .frame(height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .overlay(HStack(alignment: .bottom, spacing: 20){
                        VStack(alignment: .leading){
                            Text("Desk chair")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text("$70.00")
                                .bold()
                        }
                        
                        Circle()
                            .foregroundColor(.orange)
                            .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(Image(systemName: "plus").foregroundColor(.white))
                    })
            })
            
            
        }
        .padding(30)
    }
}
