//
//  ExercisePlanDetailView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanDetailView: View {
    
    var exercisePlan: ExercisePlan
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                ZStack {
                    VStack (alignment: .leading) {
                        Text(exercisePlan.title)
                            .font(.system(size: 30, weight: .bold))
                            .padding(EdgeInsets(top: 45, leading: 0, bottom: 0, trailing: 0))
                        
                        Text(exercisePlan.details)
                            .font(.system(size: 20, weight: .light))
                        
                        Text("\(exercisePlan.exercise.title) (\(exercisePlan.exercise.duration) mins)")
                            .font(.system(size: 20, weight: .regular))
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        
                        Text("\(exercisePlan.exercise2.title) (\(exercisePlan.exercise2.duration) mins)")
                            .font(.system(size: 20, weight: .regular))
                            .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                        
                        Text("\(exercisePlan.exercise3.title) (\(exercisePlan.exercise3.duration) mins)")
                            .font(.system(size: 20, weight: .regular))
                            .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                        Text("\(exercisePlan.exercise4.title) (\(exercisePlan.exercise4.duration) mins)")
                            .font(.system(size: 20, weight: .regular))
                            .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                        
                        
                        Button {
                            
                            print("Placeholder")
                            
                        } label: {
                            Text("Start exercise")
                                .padding()
                                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                                .foregroundColor(.black)
                                .cornerRadius(10)
                            //.offset(x: 0, y: 500)
                        }
                        .padding(EdgeInsets(top: 105, leading: 105, bottom: 0, trailing: 0))
                        .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                        
                        
                    }
                    .frame(width: geometry.size.width)
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}


struct ExercisePlanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ExercisePlanDetailView(exercisePlan:ExercisePlan(title: "Exercise Plan 1", details: "Choose this for a light and basic workout", exercise:
        Exercise(title: "Toe touches and Arm Stretches", duration: 5), exercise2: Exercise(title: "Arm Circles", duration: 5), exercise3: Exercise(title: "Calf Raises", duration: 5), exercise4: Exercise(title: "Jog on the Spot", duration: 5)))
    }
    
}
