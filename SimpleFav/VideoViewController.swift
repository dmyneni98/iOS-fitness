//
//  VideoViewController.swift
//  SimpleFav
//
//  Created by Ruben Gonzalez on 4/14/22.
//

import UIKit
import WebKit

class VideoViewController: UIViewController {
    
    var video:Video = Video()

    @IBOutlet weak var videoWebView: WKWebView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitle.text = video.Title
        videoDescription.text = video.Description
        getVideo(videoKey: video.Key)

        // Do any additional setup after loading the view.
    }
    
    func getVideo(videoKey:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoKey)")
        videoWebView.load(URLRequest(url: url!))
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
