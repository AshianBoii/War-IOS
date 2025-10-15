//  ContentView.swift
//  War
//  Created by Jonathan Marquez on 10/14/25.

import SwiftUI

struct ContentView: View {
    
    @State var PlayerCard = "card7"
    @State var cpuCard = "card13"
    @State var PlayerScore = 0
    @State var cpuScore = 0
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(PlayerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }//end of hstack for card display
                Spacer()
                
                
                    .foregroundStyle(.white)
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                HStack{
                    
                    Spacer()
                    VStack{
                        
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(PlayerScore))
                            .font(.largeTitle)
                        
                    }// end of vstack for scores/player
                    
                    Spacer()
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }// end of vstack for scores/computer
                    Spacer()
                }// end of hstack for scores/player/computer
                .foregroundStyle(.white)
                Spacer()
            }// end of vstack whole screen
            
        }// end of zstack for background
    }
    
    
    func deal(){
        // randomize player cards
        let PlayerCardValue = Int.random(in: 2...14)
        PlayerCard = "card" + String(PlayerCardValue)
        
        // randomize CPU cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //update scores
        if(PlayerCardValue > cpuCardValue){
            // add 1 to player score
            PlayerScore += 1
        }// end if
        
        else if cpuCardValue > PlayerCardValue {
            cpuScore += 1
        }// end else if
        
        else {
            //tie
            cpuScore += 0
            PlayerScore += 0
        }// end else
        
    }// end func
}

#Preview {
    ContentView()
}
