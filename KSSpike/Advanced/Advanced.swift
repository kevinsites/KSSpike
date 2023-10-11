//
//  Advanced.swift
//  KSSpike
//
//  Created by Kevin Sites on 10/10/23.
//

import FingerprintPro
import Foundation

public extension KSClass {
    static func getSignals(_ apiKey:String) -> String {
        let client = FingerprintProFactory.getInstance(apiKey)

        do {
            var visitorID = ""

            if #available(iOS 12.0, *) {
                client.getVisitorIdResponse { id in
                    print(id)
                    if let value = try? id.get() {
                        print("Success: \(value)")
                        visitorID = value.requestId
                    } else if case let .failure(error) = id {
                        print("errr: \(error.localizedDescription)")
                    }
                }
            } else {
                print("no method found")
            }

            print("Final Visitor \(visitorID)")
            return visitorID
        } catch {
            // process error
        }
        return ""
    }
}
