//
//  StateStickersBrowserViewController.swift
//  StateStickers MessagesExtension
//
//  Created by Erica Gorochow on 4/25/18.
//  Copyright © 2018 Erica Gorochow. All rights reserved.
//

import Foundation
import Messages

class StateStickerBrowserViewController: MSStickerBrowserViewController {

    var stickers = [MSSticker]()
    
    func loadStickers() {
        createSticker(asset: "Alabama", localizedDescription: "Alabama")
        createSticker(asset: "Alaska", localizedDescription: "Alaska")
        createSticker(asset: "Arizona", localizedDescription: "Arizona")
        createSticker(asset: "Arkansas", localizedDescription: "Arkansas")
        createSticker(asset: "California", localizedDescription: "California")
        createSticker(asset: "Colorado", localizedDescription: "Colorado")
        createSticker(asset: "Connecticut", localizedDescription: "Connecticut")
        createSticker(asset: "DC", localizedDescription: "DC")
        createSticker(asset: "Delaware", localizedDescription: "Delaware")
        createSticker(asset: "Florida", localizedDescription: "Florida")
        createSticker(asset: "Georgia", localizedDescription: "Georgia")
        createSticker(asset: "Hawaii", localizedDescription: "Hawaii")
        createSticker(asset: "Idaho", localizedDescription: "Idaho")
        createSticker(asset: "Illinois", localizedDescription: "Illinois")
        createSticker(asset: "Indiana", localizedDescription: "Indiana")
        createSticker(asset: "Iowa", localizedDescription: "Iowa")
        createSticker(asset: "Kansas", localizedDescription: "Kansas")
        createSticker(asset: "Kentucky", localizedDescription: "Kentucky")
        createSticker(asset: "Louisiana", localizedDescription: "Louisiana")
        createSticker(asset: "Maine", localizedDescription: "Maine")
        createSticker(asset: "Maryland", localizedDescription: "Maryland")
        createSticker(asset: "Massachusetts", localizedDescription: "Massachusetts")
        createSticker(asset: "Michigan", localizedDescription: "Michigan")
        createSticker(asset: "Minnesota", localizedDescription: "Minnesota")
        createSticker(asset: "Mississippi", localizedDescription: "Mississippi")
        createSticker(asset: "Missouri", localizedDescription: "Missouri")
        createSticker(asset: "Montana", localizedDescription: "Montana")
        createSticker(asset: "Nebrasaka", localizedDescription: "Nebrasaka")
        createSticker(asset: "Nevada", localizedDescription: "Nevada")
        createSticker(asset: "NewHampshire", localizedDescription: "NewHampshire")
        createSticker(asset: "NewJersey", localizedDescription: "NewJersey")
        createSticker(asset: "NewMexico", localizedDescription: "NewMexico")
        createSticker(asset: "NewYork", localizedDescription: "NewYork")
        createSticker(asset: "NorthDakota", localizedDescription: "NorthDakota")
        createSticker(asset: "Ohio", localizedDescription: "Ohio")
        createSticker(asset: "Oklahoma", localizedDescription: "Oklahoma")
        createSticker(asset: "Oregon", localizedDescription: "Oregon")
        createSticker(asset: "Pennsylvania", localizedDescription: "Pennsylvania")
        createSticker(asset: "RhodeIsland", localizedDescription: "RhodeIsland")
        createSticker(asset: "SouthCarolina", localizedDescription: "SouthCarolina")
        createSticker(asset: "SouthDakota", localizedDescription: "SouthDakota")
        createSticker(asset: "Tennessee", localizedDescription: "Tennessee")
        createSticker(asset: "Texas", localizedDescription: "Texas")
        createSticker(asset: "Utah", localizedDescription: "Utah")
        createSticker(asset: "Vermont", localizedDescription: "Vermont")
        createSticker(asset: "Virginia", localizedDescription: "Virginia")
        createSticker(asset: "Washington", localizedDescription: "Washington")
        createSticker(asset: "WestVirginia", localizedDescription: "WestVirginia")
        createSticker(asset: "Wisconsin", localizedDescription: "Wisconsin")
        createSticker(asset: "Wyoming", localizedDescription: "Wyoming")
      
    }
    
    func createSticker(asset: String, localizedDescription: String) {
        guard let stickerPath = Bundle.main.path(forResource: asset, ofType: "png") else {
            print("couldn't create the sticker path for", asset)
            return
        }
        let stickerURL = URL(fileURLWithPath: stickerPath)
        let sticker: MSSticker
        do{
            try sticker = MSSticker(contentsOfFileURL: stickerURL, localizedDescription: localizedDescription)
            
            stickers.append(sticker)
        }
        catch { print(error)
            return
        }
    }
    
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return stickers.count
    }
    override func stickerBrowserView(_ _stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        return stickers[index]
        }
    
}
