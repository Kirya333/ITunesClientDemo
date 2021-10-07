//
//  SongCellModel.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

struct SongCellModel {
    let title: String
    let subtitle: String?
    let collection: String?
    let artwork: String?
}

final class SongCellModelFactory {
        
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(title: model.trackName,
                             subtitle: model.artistName,
                             collection: model.collectionName,
                             artwork: model.artwork)
    }
}
