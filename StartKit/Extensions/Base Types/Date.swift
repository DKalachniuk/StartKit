//
//  Date.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 23/09/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import Foundation

extension String {
    struct Dates {
        static let justNow = NSLocalizedString("just now", comment: "just now")
        static let elapsedTemplate = NSLocalizedString("%@ ago", comment: "time ago template")
    }
}

extension Date {
    func elapsedString() -> String? {

        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: self, to: Date())

        if let year = components.year, year > 0 {
            return elapsedStringWithUnits(.year, components: components)
        } else if let month = components.month, month > 0 {
            return elapsedStringWithUnits(.month, components: components)
        } else if let day = components.day, day > 0 {
            return elapsedStringWithUnits(.day, components: components)
        } else if let hour = components.hour, hour > 0 {
            return elapsedStringWithUnits(.hour, components: components)
        } else if let minute = components.minute, minute > 1 {
            return elapsedStringWithUnits(.minute, components: components)
        } else {
            return String.Dates.justNow
        }
    }

    private func elapsedStringWithUnits(_ units: NSCalendar.Unit, components: DateComponents) -> String? {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.allowedUnits = units
        guard let timeString = formatter.string(from: components) else { return nil }
        return String(format: String.Dates.elapsedTemplate, timeString)
    }
}
