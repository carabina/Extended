//
//  Date.swift
//  Extentions
//
//  Created by Amir Shayegh on 2018-09-19.
//

import Foundation

extension Date {

    public func day(shortHand: Bool? = false) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        if let short = shortHand {
            if short {
                let day = formatter.string(from: self)
                return String(day.prefix(3))
            }
        }
        return formatter.string(from: self)
    }

    public func day() -> Int {
        let cal = Calendar.current
        return cal.component(.day, from: self)
    }

    public func month(shortHand: Bool? = false) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        if let short = shortHand {
            if short {
                let month = dateFormatter.string(from: self)
                return String(month.prefix(3))
            }
        }
        return dateFormatter.string(from: self)
    }

    public func month() -> Int {
        let cal = Calendar.current
        return cal.component(.month, from: self)
    }

    public func year() -> Int {
        let cal = Calendar.current
        return cal.component(.year, from: self)
    }

    public func fromUTC(string: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        dateFormatter.locale = Locale.init(identifier: "en_CA")
        return dateFormatter.date(from: string)!
    }

    public func toUTC() -> String {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_CA")
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSXXXXX"
        return formatter.string(from: self)
    }

    public func string() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        return dateFormatter.string(from: self)
    }

    public func stringShort() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd yyyy"
        return dateFormatter.string(from: self)
    }
}
