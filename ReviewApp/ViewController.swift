//
//  ViewController.swift
//  ReviewApp
//
//  Created by Nayan Pawar on 02/03/23.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var reviewArray = [DataItem]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        getData()
    }

    
    func setUpUI(){
        tableView.delegate = self
        tableView.dataSource = self
    }

    func getData() {
        NetworkManager.shared.getReviewsAlomofire(completion: { rating in
           
   //            print(rating)
               print("Data passed from Completion Handler")
               self.reviewArray.append(contentsOf: rating.data!)
               print("Data is appended to Array")
               DispatchQueue.main.async {
                   self.tableView.reloadData()
                   print("Data is reloaded in Tableview")
               }
        })
        }
    }


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviewArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ReviewCell
        else{
            fatalError()
        }
        
        let review = reviewArray[indexPath.row]
        let imgurl = URL(string: review.profile_image_url!)
        cell.imgProfile.kf.setImage(with: imgurl)
//        cell.imgProfile.image = UIImage(systemName: "ticket")
        cell.lblFName.text = review.first_name
        cell.lblLName.text = review.last_name
        cell.lblReview1.text = review.review
        cell.lblRatingID.text = "RatingID: \(String(describing: review.ratting_id!))"
        cell.lblRating.text = "Rating: \(String(describing: review.ratting!))"
        cell.lblDate.text = "Date: \(String(describing: review.created!))"
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


