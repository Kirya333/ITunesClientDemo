//
//  SearchSongInteractorIO.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import Foundation

protocol SearchSongInteractorInput: AnyObject {
    func searchSong(for query: String)
}

protocol SearchSongInteractorOutput: AnyObject {
    func receivedSongs(_ songs: [ITunesSong])
    func receivedError(_ error: Error)
}
