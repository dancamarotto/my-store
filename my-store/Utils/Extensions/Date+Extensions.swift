//
//  Date+Extensions.swift
//  my-store
//
//  Created by Danilo Camarotto on 18/07/2022.
//

import Foundation

extension Date {
    internal var today: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        return formatter.string(from: Date())
    }
    
    internal var weekday: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: Date())
    }
    
    internal var month: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM"
        return formatter.string(from: Date())
    }
}
