//
//  SearchSongInteractor.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import Foundation

class SearchSongInteractor: SearchSongInteractorInput {
    
    weak var output: SearchSongInteractorOutput!
    
    private let searchService: ITunesSearchService
    
    init(searchService: ITunesSearchService) {
        self.searchService = searchService
    }
    
    func searchSong(for query: String) {
        self.searchService.getSongs(forQuery: query) { [unowned self] result in
            result
                .withValue { songs in
                    self.output.receivedSongs(songs)
                }.withError { error in
                    self.output.receivedError(error)
                }
        }
    }
}
