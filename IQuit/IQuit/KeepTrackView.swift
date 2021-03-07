//
//  KeepTrackView.swift
//  IQuit
//
//  Created by Matthew Garlington on 3/6/21.
//

import SwiftUI

struct KeepTrackView: View {
    
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    // Add lines 6 -> 8
    @State var years: Int = 0
    @State var months: Int = 0
    @State var weeks: Int = 0
    @State var days: Int = 0
    @State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        
        ZStack {
            Spacer()
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.2736099958, blue: 0.35904935, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.66018641, blue: 0.6485481858, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
            
            VStack(spacing: 30) {
                
                Text("How long it has been!")
                    
                    
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                
                VStack(alignment: .leading) {
                    ZStack {
                        
                        Spacer()
                            .frame(width: 400, height: 175)
                            .background(BlurView(style: .systemUltraThinMaterialLight))
                            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        
                        
                        VStack {
                            
                            Text("\(years)")
                            Text("Years")
                            
                        }
                        .font(.system(size: 35, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding()
                        
                        
                        
                    }
                    HStack {
                        ZStack {
                            
                            Spacer()
                                .frame(width: 200, height: 175)
                                .background(BlurView(style: .systemUltraThinMaterialLight))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            
                            
                            VStack {
                                
                                Text("\(months)")
                                Text("Months")
                                
                            }
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            
                            
                            
                        }
                        ZStack {
                            
                            Spacer()
                                .frame(width: 200, height: 175)
                                .background(BlurView(style: .systemUltraThinMaterialLight))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            
                            
                            VStack {
                                
                                Text("\(weeks)")
                                Text("Weeks")
                                
                            }
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            
                            
                            
                        }
                    }
                    HStack {
                        ZStack {
                            
                            Spacer()
                                .frame(width: 200, height: 175)
                                .background(BlurView(style: .systemUltraThinMaterialLight))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            
                            
                            VStack {
                                
                                Text("\(days)")
                                Text("Days")
                                
                            }
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            
                            
                            
                        }
                        ZStack {
                            
                            Spacer()
                                .frame(width: 200, height: 175)
                                .background(BlurView(style: .systemUltraThinMaterialLight))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            
                            
                            VStack {
                                
                                Text("\(hours)")
                                Text("Hours")
                                
                            }
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            
                            
                            
                        }
                    }
                    HStack {
                        ZStack {
                            
                            Spacer()
                                .frame(width: 200, height: 175)
                                .background(BlurView(style: .systemUltraThinMaterialLight))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            
                            
                            VStack {
                                
                                Text("\(minutes)")
                                Text("Minutes")
                                
                            }
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            
                            
                            
                        }
                        ZStack {
                            
                            Spacer()
                                .frame(width: 200, height: 175)
                                .background(BlurView(style: .systemUltraThinMaterialLight))
                                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            
                            
                            VStack {
                                
                                Text("\(seconds)")
                                Text("Seconds")
                                
                            }
                            .font(.system(size: 35, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            
                            
                            
                        }
                    }
                    //
                    //                if timerIsPaused {
                    //                  HStack {
                    //                    Button(action:{
                    //                        self.startTimer()
                    //                    }){
                    //                      Image(systemName: "play.fill")
                    //                        .font(.system(size: 50, weight: .bold, design: .default))
                    //                        .foregroundColor(.white)
                    //                        .padding()
                    //                    }
                    //                    .padding(.all)
                    //                  }
                    //                } else {
                    //                  Text("")
                    //                }
                }
                
                ZStack(alignment: .center) {
                    
                    Spacer()
                        .frame(width: 400, height: 175)
                        .background(BlurView(style: .systemUltraThinMaterialLight))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    
                    VStack {
                        
                        HStack {
                            
                            DatePicker("", selection: $selectedDate, displayedComponents: .date)
                            
                            Spacer()
                            
                            Button("Select") {
                                self.startTimer()
                                
                            }
                            
                            
                        }
                        .offset(x: -100)
                        
                        
                        Text("Your selected date: \(selectedDate)")
                        
                    }
                    .frame(width: 300, height: 200)
                    
                }
            }
        }
            
        }
        
        
    }
    func startTimer(){
      timerIsPaused = false
      // 1. Make a new timer
        timer = Timer.scheduledTimer(withTimeInterval: 0.0000001, repeats: true){ tempTimer in
        // 2. Check time to add to H:M:S
        if self.seconds == 59 {
          
            self.seconds = 0
          
            if self.minutes == 59 {
            
                self.minutes = 0
           
                self.hours = self.hours + 1
        
            } else {
           
                self.minutes = self.minutes + 1
          }
            
            if self.hours == 24 {
            
                self.hours = 0
           
                self.days = self.days + 1
        
            }
            
            if self.days == 7 {
            
                self.weeks = self.weeks + 1
                self.days = 0
        
            }
            
            if self.weeks == 4 {
            
                self.months = self.months + 1
                self.weeks = 0
        
            }
            
            if self.months == 12 {
            
                self.years = self.years + 1
                self.months = 0
        
            }
     
       
        } else {
            
            self.seconds = self.seconds + 1
        }
            
      }
    }
    
}


struct KeepTrackView_Previews: PreviewProvider {
    static var previews: some View {
        KeepTrackView()
    }
}
