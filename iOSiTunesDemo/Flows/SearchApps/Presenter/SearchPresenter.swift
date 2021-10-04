//
//  SearchPresenter.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

class SearchPresenter: SearchViewOutput {
    
    weak var view: (SearchViewInput & UIViewController)!
    
    private let searchService = ITunesSearchService()
    
    func requestApps(with query: String) {
        self.view.throbber(show: true)
        self.view.setSearchResultApps([])
        
        self.searchService.getApps(forQuery: query) { [unowned self] result in
            self.view.throbber(show: false)
            
            result
                .withValue { apps in
                    self.view.setEmptyStateVisible(apps.isEmpty)
                    self.view.setSearchResultApps(apps)
                }.withError { error in
                    self.view.showError(error: error)
                }
        }
    }
    
    func openAppDetails(with app: ITunesApp) {
        let appVC = AppDetailViewController()
        appVC.app = app
        self.view.navigationController?.pushViewController(appVC, animated: true)
    }
}
