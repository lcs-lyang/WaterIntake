//
//  ContentView.swift
//  WaterIntake
//
//  Created by Lillian Yang on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.blue)
                                
                VStack{
                    Image("water")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Text("How much water did you intake today?")
                        .bold()
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    TextField("This argument should the describe the purpose of the text field within the context of your app, e.g.: 'Name' or 'Email Address'",
                              text: .constant(""),
                              prompt: Text("Enter your water intake here..."))
                        .padding()
                        .font(.title3)
                    
                    Button(action: {
                        // NOTE: Output will not be shown unless this app is run in the "full" simulator
                        print("Button was pressed")
                    }, label: {
                        Text("Submit")
                    })
                    .foregroundColor(.black)
                    .buttonStyle(.bordered)
                    .background(.gray)
                    .cornerRadius(15)
                    .padding()
                    
                    Text("Feedback:")
                        .bold()
                        .font(.title)
                    Text("You need to drink more!")
                        .padding()
                        .font(.title3)
                    
                    
                }
            }
            
        }
        .navigationTitle("Water Intake")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
       
    }
}
