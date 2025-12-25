//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by RatanakVisal on 25/12/25.
//

import SwiftUI
import Combine

final class BarcodeScannerViewModel: ObservableObject{
    @Published var scannedCode: String?
    @Published var alertItem: AlertItem?
}
