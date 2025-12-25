//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by RatanakVisal on 23/12/25.
//

import SwiftUI



struct BarcodeScanner: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)

                Spacer().frame(height: 60)

                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)

                Text(viewModel.scannedCode ?? "Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.scannedCode == nil ? .red : .green )
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem){ alertItem in
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
