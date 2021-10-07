//
//  SearchSongAssemby.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

enum SearchSongAssembly {
    static func build() -> SearchSongViewController {
        let presenter = SearchSongPresenter()
        let viewController = SearchSongViewController()
        
        let interactor = SearchSongInteractor(searchService: ITunesSearchService())
        let router = SearchSongRouter()
        
        // bindings
        viewController.output = presenter
        
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        router.output = presenter
        router.transitionHandler = viewController
        
        return viewController
    }
}
