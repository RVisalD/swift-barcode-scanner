//
//  Alert.swift
//  BarcodeScanner
//
//  Created by RatanakVisal on 25/12/25.
//

import SwiftUI

struct AlertItem : Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera. We are unable to capture input.", dismissButton: .default(Text("OK")))
    
    static let invalidBarcode = AlertItem(title: "Invalid Barcode", message: "The value scanned is not valid. THis app scans EAN-8 and EAN-13.", dismissButton: .default(Text("OK")))
}
