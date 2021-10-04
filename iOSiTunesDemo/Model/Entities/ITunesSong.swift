//
//  ITunesSong.swift
//  iOSiTunesDemo
//
//  Created by Кирилл Тарасов on 05.10.2021.
//

import UIKit

public struct ITunesSong: Codable {
    
    public var trackName: String
    public var artistName: String?
    public var collectionName: String?
    public var artwork: String?
    
    // MARK: - Codable
    
    private enum CodingKeys: String, CodingKey {
        case trackName = "trackName"
        case artistName = "artistName"
        case collectionName = "collectionName"
        case artwork = "artworkUrl100"
    }
    
    // MARK: - Init
    
    internal init(trackName: String,
                  artistName: String?,
                  collectionName: String?,
                  artwork: String?) {
        self.trackName = trackName
        self.artistName = artistName
        self.collectionName = collectionName
        self.artwork = artwork
    }
}
