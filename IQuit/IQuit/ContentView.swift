//
//  ContentView.swift
//  IQuit
//
//  Created by Matthew Garlington on 3/5/21.
//

import SwiftUI

struct ContentView: View {
    
    var habits = ["Smoking", "Alcohol", "Pills", "Gambling", "Coffee" , "Sugar"]
    @State var habitPastTense = ["smoke", "drink", "use pills", "gamble", "have coffee" , "have sugar"]
    @State var isSmokingSelected = false
    @State var isAlcoholSelected = false
    @State var isPillsSelected = false
    @State var isGamblingSelected = false
    @State var isCoffeeSelected = false
    @State var isSugarSelected = false
    @State var habit = [0, 1, 2, 3, 4, 5]
    var body: some View {
        NavigationView {
        
        ZStack {
            Spacer()
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.2736099958, blue: 0.35904935, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.66018641, blue: 0.6485481858, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                
                Text("What habit do you want to quit?")
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundColor(.white)
                
                ScrollView(showsIndicators: false) {
                
                VStack(spacing: 10) {
            
                
                    HabitCard(habitPastTense: $habitPastTense, selectedCard: $isSmokingSelected, habit: $habit[0], isSmokingSelected: $isSmokingSelected, isAlcoholSelected: $isAlcoholSelected, isPillsSelected: $isPillsSelected, isGamblingSelected: $isGamblingSelected, isCoffeeSelected: $isCoffeeSelected,  isSugarSelected: $isSugarSelected)
                    HabitCard(habitPastTense: $habitPastTense, selectedCard: $isAlcoholSelected, habit: $habit[1], isSmokingSelected: $isSmokingSelected, isAlcoholSelected: $isAlcoholSelected, isPillsSelected: $isPillsSelected, isGamblingSelected: $isGamblingSelected, isCoffeeSelected: $isCoffeeSelected,  isSugarSelected: $isSugarSelected)
                    HabitCard(habitPastTense: $habitPastTense, selectedCard: $isPillsSelected, habit: $habit[2], isSmokingSelected: $isSmokingSelected, isAlcoholSelected: $isAlcoholSelected, isPillsSelected: $isPillsSelected, isGamblingSelected: $isGamblingSelected, isCoffeeSelected: $isCoffeeSelected,  isSugarSelected: $isSugarSelected)
                    HabitCard(habitPastTense: $habitPastTense, selectedCard: $isGamblingSelected, habit: $habit[3], isSmokingSelected: $isSmokingSelected, isAlcoholSelected: $isAlcoholSelected, isPillsSelected: $isPillsSelected, isGamblingSelected: $isGamblingSelected, isCoffeeSelected: $isCoffeeSelected,  isSugarSelected: $isSugarSelected)
                    HabitCard(habitPastTense: $habitPastTense, selectedCard: $isCoffeeSelected, habit: $habit[4], isSmokingSelected: $isSmokingSelected, isAlcoholSelected: $isAlcoholSelected, isPillsSelected: $isPillsSelected, isGamblingSelected: $isGamblingSelected, isCoffeeSelected: $isCoffeeSelected,  isSugarSelected: $isSugarSelected)
                    HabitCard(habitPastTense: $habitPastTense, selectedCard: $isSugarSelected, habit: $habit[5], isSmokingSelected: $isSmokingSelected, isAlcoholSelected: $isAlcoholSelected, isPillsSelected: $isPillsSelected, isGamblingSelected: $isGamblingSelected, isCoffeeSelected: $isCoffeeSelected,  isSugarSelected: $isSugarSelected)
                    
                    
                    
                }
                    
                  
                }
           
            }
        }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BlurView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    var style: UIBlurEffect.Style
 
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        
        // adding the style varible makes the blur style customizable
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
       
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}


struct HabitCard: View {
    var habits = ["Smoking", "Alcohol", "Pills", "Gambling", "Coffee" , "Sugar"]
    @Binding var habitPastTense: [String]
    @Binding var selectedCard: Bool
    @Binding var habit: Int
    @State var selectedHabit = ""
    
    @Binding var isSmokingSelected: Bool
    @Binding var isAlcoholSelected: Bool
    @Binding var isPillsSelected: Bool
    @Binding var isGamblingSelected: Bool
    @Binding var isCoffeeSelected: Bool
    @Binding var isSugarSelected: Bool
  
    var body: some View {
        ZStack {
            
            Button(action: {
                
                withAnimation {
                    self.selectedCard.toggle()
                    
                }
                
                if selectedCard && isSmokingSelected {
                    
                    self.isAlcoholSelected = false
                    self.isSugarSelected = false
                    self.isGamblingSelected = false
                    self.isCoffeeSelected = false
                    self.isPillsSelected = false
                    
                    
                }
                if selectedCard && isAlcoholSelected {
                    
                    self.isSmokingSelected = false
                    self.isSugarSelected = false
                    self.isGamblingSelected = false
                    self.isCoffeeSelected = false
                    self.isPillsSelected = false
                    
                    
                }
                
                if selectedCard && isSugarSelected {
                    
                    self.isAlcoholSelected = false
                    self.isSmokingSelected = false
                    self.isGamblingSelected = false
                    self.isCoffeeSelected = false
                    self.isPillsSelected = false
                    
                    
                }
                
                if selectedCard && isGamblingSelected {
                    
                    self.isAlcoholSelected = false
                    self.isSmokingSelected = false
                    self.isSugarSelected = false
                    self.isCoffeeSelected = false
                    self.isPillsSelected = false
                    
                    
                }
                
                if selectedCard && isPillsSelected {
                    
                    self.isAlcoholSelected = false
                    self.isSmokingSelected = false
                    self.isSugarSelected = false
                    self.isCoffeeSelected = false
                    self.isGamblingSelected = false
                    
                    
                }
                
                if selectedCard && isCoffeeSelected {
                    
                    self.isAlcoholSelected = false
                    self.isSmokingSelected = false
                    self.isSugarSelected = false
                    self.isPillsSelected = false
                    self.isGamblingSelected = false
                    
                    
                }
              
                
                
                
                
                if selectedCard {
                    
                    self.selectedHabit.append(habitPastTense[habit])
                    
                } else {
                    
                    self.selectedHabit.removeAll()
                }
                
            },
            label: {
                
                ZStack {
                    
                    Text("\(habits[habit])")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .frame(width: 400, height: 150)
                        .background(BlurView(style: .systemUltraThinMaterialLight))
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                        .rotation3DEffect(Angle.init(degrees: selectedCard ? 360 : 0), axis: (x: 0.9, y: 0, z: 0))
                        .animation(.easeInOut(duration: 0.8))
                        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.8))
                        .opacity(selectedCard ? 0.0001: 1)
                    
                    
                    ZStack(alignment: .center) {
                        
                        Text("\(habits[habit])")
                            .foregroundColor(.black)
                            .font(.system(size: 28, weight: .bold, design: .default))
                            .frame(width: 400, height: 150)
                        
                        HStack {
                            Spacer()
                            
                            NavigationLink(
                        
                                destination:
                                    
                                    withAnimation {
                                        HowLongView(selectedHabit: $selectedHabit).transition(.opacity)
                                    
                                },
                                
                                label: {
                                    
                                    Image(systemName: "arrow.forward.square")
                                        .font(.system(size: 50, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                        .padding()
                                })
                            
                        }
                        
                        
                        
                    }
                    
                    .background(BlurView(style: .systemUltraThinMaterialDark))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .rotation3DEffect(Angle.init(degrees: selectedCard ? 360 : 0), axis: (x: 0.9, y: 0, z: 0))
                    .animation(.easeInOut(duration: 0.8))
                    .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.8))
                    .opacity(selectedCard ? 1: 0.00011)
                    
                }
                
            })
            
        }
    }
}

