//
//  YPLibraryVC + UIHelpers.swift
//  YPImagePicker
//
//  Created by Sacha DSO on 26/01/2018.
//  Copyright © 2016 Yummypets. All rights reserved.
//

import UIKit
import Photos

extension YPLibraryVC {
    
    func display(photo asset: PHAsset, image: UIImage) {
        v.imageCropView.imageSize = CGSize(width: asset.pixelWidth, height: asset.pixelHeight)
        v.imageCropView.image = image
        if configuration.onlySquareImagesFromLibrary {
            v.imageCropView.setFitImage(true)
            v.imageCropView.minimumZoomScale = v.imageCropView.squaredZoomScale
        }
        v.refreshCropControl()
    }
    
    
    func play(videoItem: AVPlayerItem, size: CGSize) {
        
        let player = AVPlayer(playerItem: videoItem)
        if configuration.videoGravity == .resizeAspectFill{
            v.imageCropView.playerLayer.frame.size = UIScreen.main.bounds.size
            
        }else{
            v.imageCropView.playerLayer.frame.size = v.imageCropView.frame.size
        }
        v.imageCropView.playerLayer.player = player
        v.imageCropView.playerLayer.isHidden = false
        v.imageCropViewContainer.spinnerView.alpha = 0
        player.play()
    }
    
    func downloadAndSetPreviewFor(video asset: PHAsset) {
        mediaManager.imageManager?.fetchPreviewFor(video: asset) { preview in
            // Prevent long images to come after user selected
            // another in the meantime.
            if self.latestImageTapped == asset.localIdentifier {
                DispatchQueue.main.async {
                    self.v.setPreview(preview)
                }
            }
        }
    }
    
    func downloadAndPlay(video asset: PHAsset) {
        mediaManager.imageManager?.fetchPlayerItem(for: asset) { playerItem in
            // Prevent long videos to come after user selected another in the meantime.
            if self.latestImageTapped == asset.localIdentifier {
                var videoSize = CGSize()
                let options: PHVideoRequestOptions = PHVideoRequestOptions()
                options.version = .original
                PHImageManager.default().requestAVAsset(forVideo: asset, options: options, resultHandler: { (asset, audioMix, info) in
                    if let urlAsset = asset as? AVURLAsset {
                        let localVideoUrl = urlAsset.url
                        if let track = AVAsset.init(url: localVideoUrl).tracks(withMediaType: AVMediaType.video).first{
                        
                            videoSize = track.naturalSize
                            DispatchQueue.main.async {
                                self.play(videoItem: playerItem, size: videoSize)
                            }
                        }
                    }
                })
            }
        }
    }
}
