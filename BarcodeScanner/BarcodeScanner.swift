//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by RatanakVisal on 23/12/25.
//

import SwiftUI

struct BarcodeScanner: View {
    var body: some View {
        NavigationView{
            VStack{
                ScannerView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)

                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScanner()
}
