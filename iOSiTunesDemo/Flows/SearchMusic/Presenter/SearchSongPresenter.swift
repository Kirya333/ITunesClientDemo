//
//  SearchSongPresenter.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

class SearchSongPresenter: SearchSongViewOutput {
    
    weak var view: SearchSongViewInput!
    var router: SearchSongRouterInput!
    var interactor: SearchSongInteractorInput!
    
    
    func requestSongs(with query: String) {
        self.view.throbber(show: true)
        self.view.setSearchResultSongs([])
        
        self.interactor.searchSong(for: query)
    }
}

// MARK: - SearchSongInteractorOutput

extension SearchSongPresenter: SearchSongInteractorOutput {
    func receivedSongs(_ songs: [ITunesSong]) {
        self.view.throbber(show: false)
        self.view.setEmptyStateVisible(songs.isEmpty)
        self.view.setSearchResultSongs(songs)
    }
    
    func receivedError(_ error: Error) {
        self.view.throbber(show: false)
        self.view.setEmptyStateVisible(true)
        self.view.showError(error: error)
    }
}

// MARK: - SearchSongRouterOutput

extension SearchSongPresenter: SearchSongRouterOutput {
    
}
