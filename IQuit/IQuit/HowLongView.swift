//
//  HowLongView.swift
//  IQuit
//
//  Created by Matthew Garlington on 3/6/21.
//

import SwiftUI

struct HowLongView: View {
    @Binding var selectedHabit: String
    @State var timeSince: Date = Date()
    var body: some View {
     
           
        ZStack {
            Spacer()
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.2736099958, blue: 0.35904935, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.66018641, blue: 0.6485481858, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
            
                Text("When did you last \(selectedHabit)?")
                    
              
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                ZStack(alignment: .center) {
                    
                    Spacer()
                        .frame(width: 300, height: 100)
                        .background(BlurView(style: .systemUltraThinMaterialLight))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                
                
                    DatePicker("", selection: $timeSince)
                       
                        .padding()
                        .offset(x: -90)
                        .accentColor(.primary)
                    
                }
                
                .offset(y: -300)
                      
                
                
        }
            
            }
    
        
    }
}

struct HowLongView_Previews: PreviewProvider {
    static var previews: some View {
        HowLongView(selectedHabit: .constant(""))
    }
}
