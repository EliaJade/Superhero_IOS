//
//  DetailViewController.swift
//  Superhero_IOS
//
//  Created by Mañanas on 22/5/25.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    var superhero: Superhero!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        avatarImageView.loadFrom(url: superhero.image.url)
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
