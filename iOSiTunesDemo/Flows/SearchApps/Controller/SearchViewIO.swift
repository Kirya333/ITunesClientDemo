//
//  SearchViewIO.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

protocol SearchViewInput: AnyObject {
    func throbber(show: Bool)
    func showError(error: Error)
    func setEmptyStateVisible(_ isVisible: Bool)
    func setSearchResultApps(_ apps: [ITunesApp])
}

protocol SearchViewOutput: AnyObject {
    func requestApps(with query: String)
    func openAppDetails(with app: ITunesApp)
}
