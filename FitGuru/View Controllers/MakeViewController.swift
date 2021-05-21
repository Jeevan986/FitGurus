//
//  MakeViewController.swift
//  FitGuru
//
//  Created by Furlhamu Sherpa on 5/13/21.
//

import UIKit
import Parse

class MakeViewController: UIViewController {
    
    
    @IBOutlet weak var workoutField: UITextView!

    @IBOutlet weak var dietField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSubmitButton(_ sender: Any) {
        let post = PFObject(className: "Posts")
        
        post["workout"] = workoutField.text!
        post["diet"] = dietField.text!
        post["author"] = PFUser.current()!
        
        post.saveInBackground{(success, error) in
            if success {
                let main = UIStoryboard(name: "Main", bundle: nil)
                let plansViewController = main.instantiateViewController(identifier: "PlansViewController")
                let delegate = self.view.window?.windowScene?.delegate as! SceneDelegate
                delegate.window?.rootViewController = plansViewController
                print("saved!")
            } else {
                print("error!")
            }
        }
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
