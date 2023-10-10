//
//  General.swift
//  KSSpike
//
//  Created by Kevin Sites on 10/10/23.
//

import Foundation

public enum KSClass {
    internal static var name: String = ""

    public func getName() -> String {
        return KSClass.name
    }

    public func setName(_ newName: String) {
        KSClass.name = newName
    }
}
