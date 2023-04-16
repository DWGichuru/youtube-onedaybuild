//
//  constants.swift
//  youtube-onedaybuild
//
//  Created by Duncan Gichuru on 2023-04-15.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyDpvUDC8xdZABZzUU-YGWDFs9UNZdiyXfU"
    static var PLAYLIST_ID = "PL8_LBdZbxgK0D3-gF1RyNi6E6yn_LiBkd"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
