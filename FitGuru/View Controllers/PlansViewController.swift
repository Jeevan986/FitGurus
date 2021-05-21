//
//  PlansViewController.swift
//  FitGuru
//
//  Created by Furlhamu Sherpa on 5/13/21.
//

import UIKit
import Parse

class PlansViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [PFObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Posts")
        query.includeKey("author")
        query.limit = 20
        
        query.findObjectsInBackground {(posts, error) in
            if posts != nil {
                self.posts = posts!
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        
        let post = posts[indexPath.row]
        
        let user = post["author"] as! PFUser
        cell.fitguruLabel.text = user.username
        
        cell.workoutLabel.text = post["workout"] as? String
        cell.dietLabel.text = post["diet"] as? String
        
        return cell
    }

    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
                let main = UIStoryboard(name: "Main", bundle: nil)
                let firstViewController = main.instantiateViewController(identifier: "FirstViewController")
                let delegate = self.view.window?.windowScene?.delegate as! SceneDelegate
                delegate.window?.rootViewController = firstViewController
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
