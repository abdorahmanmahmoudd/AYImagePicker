//
//  InstagramCamera.swift
//  InstagramCameraComponent
//
//  Created by abdelrahman.youssef on 3/11/18.
//

import UIKit
import AVFoundation
import YPImagePicker

public class AYImagePicker {
    
    public let instance : YPImagePicker?

    public init (){

        var config = YPImagePickerConfiguration()
        config.screens = [.library,.photo,.video]
        config.showsVideoInLibrary = true
        config.onlySquareImagesFromLibrary = false
        config.onlySquareImagesFromCamera = false
        config.videoGravity = AVLayerVideoGravity.resizeAspectFill
        config.startOnScreen = .library
        config.showsFilters = false
        instance = YPImagePicker.init(configuration: config)

    }
    
    
}
