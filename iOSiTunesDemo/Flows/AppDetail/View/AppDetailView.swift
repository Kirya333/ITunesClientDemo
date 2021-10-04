//
//  AppDetailView.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

final class AppDetailView: UIView {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configureUI()
    }
    
    // MARK: - UI
    
    private func configureUI() {
        self.backgroundColor = .white
    }
    
}
