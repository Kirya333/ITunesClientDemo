//
//  UIView+Preview.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import Foundation
import SwiftUI

struct UIPreviewView<V: UIView>: UIViewRepresentable {
    
    let view: V
    
    init(_ view: V) {
        self.view = view
    }
    
    func makeUIView(context: Context) -> some UIView {
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
}
