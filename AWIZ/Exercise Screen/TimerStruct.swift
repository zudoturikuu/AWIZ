//
//  TimerStruct.swift
//  AWIZ
//
//  Created by Wong Jun heng on 19/11/22.
////  With reference from Indetly on Youtube

import Foundation

extension TimerView {
    final class ViewModel: ObservableObject {
        @Published var isPaused = false
        @Published var isActive = false
        @Published var showingAlert = false
        @Published var time: String = "5:00"
        @Published var minutes = 5.0
        
    
        
        
        var initialTime = 0
        var endDate = Calendar.current.date(byAdding: .minute, value: 5, to: Date())!
        var pauseDate = Date()
        var pauseInterval = 0.0
        
        func start() {
            self.initialTime = 5
            self.reset()
            self.endDate = Date()
            self.endDate = Calendar.current.date(byAdding: .minute, value: self.initialTime, to: endDate)!
            self.isActive = true
        }
        
        func reset() {
            self.isActive = false
            self.pauseInterval = 0.0
            self.minutes = Double(initialTime)
            self.time = "\(Int(minutes)):00"
        }
        
        func pause() {
            self.isPaused = true
            if self.isActive {
                pauseDate = Date()
            } else {
                // keep track of the total time we're paused
                pauseInterval += Date().timeIntervalSince(pauseDate)
            }
            self.isActive.toggle()
        }
        
        func updateCountdown(){
            guard isActive else { return }
            
            let now = Date()
            let diff = endDate.timeIntervalSince1970 + self.pauseInterval - now.timeIntervalSince1970
            
            if diff <= 0 {
                self.isActive = false
                self.time = "0:00"
                self.showingAlert = true
                return
            }
            
            let date = Date(timeIntervalSince1970: diff)
            let calendar = Calendar.current
            let minutes = calendar.component(.minute, from: date)
            let seconds = calendar.component(.second, from: date)
            
            self.time = String(format:"%02d:%d", minutes, seconds)
        }
    }
}
