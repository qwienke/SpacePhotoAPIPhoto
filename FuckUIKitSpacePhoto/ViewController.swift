//
//  ViewController.swift
//  FuckUIKitSpacePhoto
//
//  Created by Quinn Wienke on 1/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var copyrightLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let photoInfoController = PhotoInfoController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        imageView.image = UIImage(systemName: "photo.on.rectangle")
        descriptionLabel.text = ""
        copyrightLabel.text = ""
        
        Task {
            do {
                let photoInfo = try await photoInfoController.fetchPhotoInfo()
                self.title = photoInfo.title
                self.descriptionLabel.text = photoInfo.description
                self.copyrightLabel.text = photoInfo.copyright
            } catch {
                self.title = "Error Fetching Photo"
                
            }
        }
    }


}

//
//do {
//        let photoInfo = try await photoInfoController.fetchPhotoInfo()
//        self.title = photoInfo.title
//        self.descriptionLabel.text = photoInfo.description
//        self.copyrightLabel.text = photoInfo.copyright
//    } catch {
//        self.title = "Error Fetching Photo"
//        self.imageView.image = UIImage(systemName:
//           "exclamationmark.octagon")
//        self.descriptionLabel.text = error.localizedDescription
//        self.copyrightLabel.text = ""
//    }

