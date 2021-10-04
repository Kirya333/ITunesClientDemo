//
//  SearchAssembly.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

mport UIKit

enum SearchAssembly {
    static func build() -> SearchViewController {
        let viewController = SearchViewController()
        
        let viewModel = SearchViewModel(
            downloadingAppsService: FakeDownloadAppsService(),
            searchService: ITunesSearchService()
        )
        
        // bindings
        viewController.viewModel = viewModel
        viewModel.viewController = viewController
        
        return viewController
    }
}
