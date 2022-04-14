
//  ViewController.swift
//  SimpleFav
//  Connect to weekly table view cell
//  Created by Chris Le on 4/11/22.
//

import UIKit

class WeeklyTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var videos:[Video] = []
    var video:Video = Video()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let video = Video()
        video.Key = "mS1kiPIWHuE"
        video.Title = "Quick Full Body Burn || No-Equipment || Nike Training Club"
        videos.append(video)
        
        let video2 = Video()
        video.Key = "T8o6ti9tbFA"
        video.Title = "12 Min Weight Loss HIIT Workout - Weight Loss Challenge 2022"
        videos.append(video2)
        
        let video3 = Video()
        video.Key = "rnL07TTmikA"
        video.Title = "THE PERFECT HYBRID LEG WORKOUT (CALISTHENICS & WEIGHTS)"
        videos.append(video3)
        
        let video4 = Video()
        video.Key = "Lokdk0dla-w"
        video.Title = "Training Like Batman | Part 1: Strength and Conditioning"
        videos.append(video4)
        
        let video5 = Video()
        video.Key = "bcv5eBKyz1c"
        video.Title = "Full Body Calisthenics Workout to Build Muscle "
        videos.append(video5)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VideoTableViewCell
        
        cell.videoTitle.text = videos[indexPath.row].Title
        let url = "https://img.youtube.com/vi/\(videos[indexPath.row].Key)/0.jpg"
        cell.videoImageView.downloaded(from: url)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vi = videos[indexPath.row]
        self.video = vi
        
        performSegue(withIdentifier: "toVideo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toVideo" {
            let vc = segue.destination as! VideoViewController
            vc.video = self.video
        }
    }
}
class Video{
    var Key:String = ""
    var Title:String = ""
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


extension UIImageView{
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit){
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else {return}
            DispatchQueue.main.async(){
                self.image = image
            }
        }.resume()
    }
    
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else {return}
        downloaded(from: url, contentMode: mode)
    }
}
