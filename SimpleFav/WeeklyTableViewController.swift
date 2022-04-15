
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
        video.Key = "edIK5SZYMZo"
        video.Title = "Replace Treadmill With This 10 Min HIIT/CARDIO Workout"
        video.Description = "Join Chris Heria as he shows you how to Replace Treadmill With this 10 Min HIIT/CARDIO Workout that is going to build muscle and burn fat. Follow along with Chris as he does every exercise with you and giving you tips and the right amount of rest so you can maintain peak fat-burning conditions."
        videos.append(video)
        
        let video2 = Video()
        video2.Key = "5vVSGITznQk"
        video2.Title = "How to Power Clean (Olympic Weightlifting 101)"
        video2.Description = "Need help perfecting the power clean? Dr. Aaron Horschig and elite weightlifter Darren Barnes walk you through a step-by-step process to learning and performing this lift. "
        videos.append(video2)
        
        let video3 = Video()
        video3.Key = "rnL07TTmikA"
        video3.Title = "THE PERFECT HYBRID LEG WORKOUT (CALISTHENICS & WEIGHTS)"
        video3.Description = "LIMITLESS ATHLETE HYBRID PROGRAM"
        videos.append(video3)
        
        let video4 = Video()
        video4.Key = "Lokdk0dla-w"
        video4.Title = "Training Like Batman | Part 1: Strength and Conditioning"
        video4.Description = "What’s up everyone! Welcome back to my channel. On this video, I’m covering a Batman style strength and conditioning training covering the 3 categories"
        videos.append(video4)
        
        let video5 = Video()
        video5.Key = "bcv5eBKyz1c"
        video5.Title = "Full Body Calisthenics Workout to Build Muscle"
        video5.Description = "Full Body Calisthenics Workout to Build Muscle |  | 15 Minute Workout"
        videos.append(video5)
        
        let video6 = Video()
        video6.Key = "pymKHcywkuc"
        video6.Title = "The PERFECT BEGINNER Rowing Workout"
        video6.Description = "Are you looking for a beginner workout for the rowing machine? Do you need some drill work to improve how you're moving? We all do! Jump into this rolling drill workout for 20 minutes! The rowing machine will be your friend if you can learn to work with it."
        videos.append(video6)
        
        let video7 = Video()
        video7.Key = "ZiGE3-L4vyg"
        video7.Title = "HIIT Indoor Cycling Workout | 30 Minute Intervals: Fitness Training"
        video7.Description = "James leads another 30 minute cycling workout, which will get you fit fast. This interval session is perfect for burning fat and building your 30 second max effort. Make sure you warm up properly, have enough water to drink and get sprinting. You can use a road bike on a turbo trainer, on the rollers or an indoor bike."
        videos.append(video7)
        
        let video8 = Video()
        video8.Key = "mj2RGYpknzA"
        video8.Title = "10 Minute Stretch Routine (no equipment) with Kit Rich"
        video8.Description = "Quick stretch routine. No equipment needed. This routine can be done as a cool down after one of Kit's routines. It can also be a stand alone routine on a rest and recovery day. It can also be done when you first wake up in the morning or before you go to bed."
        videos.append(video8)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VideoTableViewCell
        
        cell.videoTitle.text = videos[indexPath.row].Title
        cell.videoDescription.text = videos[indexPath.row].Description
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
    var Description:String = ""
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
