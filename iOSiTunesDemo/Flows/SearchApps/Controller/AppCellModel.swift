//
//  AppCellModel.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import Foundation

struct AppCellModel {
    let title: String
    let subtitle: String?
    let rating: String?
    let downloadState: DownloadingApp.DownloadState
}

final class AppCellModelFactory {
    
    static func cellModel(from model: ITunesApp, downloadState: DownloadingApp.DownloadState) -> AppCellModel {
        return AppCellModel(title: model.appName,
                            subtitle: model.company,
                            rating: model.averageRating >>- { "\($0)" },
                            downloadState: downloadState)
    }
}
