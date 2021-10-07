//
//  SearchSongViewOutput.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

protocol SearchSongViewInput: AnyObject {
    func throbber(show: Bool)
    func showError(error: Error)
    func setEmptyStateVisible(_ isVisible: Bool)
    func setSearchResultSongs(_ songs: [ITunesSong])
}

protocol SearchSongViewOutput: AnyObject {
    func requestSongs(with query: String)
}
