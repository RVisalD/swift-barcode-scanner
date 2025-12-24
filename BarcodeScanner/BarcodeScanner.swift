//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by RatanakVisal on 23/12/25.
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

struct BarcodeScanner: View {
    
    @State private var scannedCode: String?
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)

                Spacer().frame(height: 60)

                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)

                Text(scannedCode ?? "Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode == nil ? .red : .green )
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem){ alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}


#Preview {
    BarcodeScanner()
}
