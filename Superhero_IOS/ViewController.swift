//
//  ViewController.swift
//  Superhero_IOS
//
//  Created by Mañanas on 21/5/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Task {
            
            let superheroList = await SuperheroProvider.findSuperheroByName(query: "super")
            print(superheroList)
        }
    }


}

