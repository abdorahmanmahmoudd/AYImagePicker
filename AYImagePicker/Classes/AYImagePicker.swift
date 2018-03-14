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
        config.showsVideoInLibrary = true
        config.videoGravity = AVLayerVideoGravity.resizeAspect
        config.startOnScreen = .library
        instance = YPImagePicker.init(configuration: config)

    }
    
    
}
