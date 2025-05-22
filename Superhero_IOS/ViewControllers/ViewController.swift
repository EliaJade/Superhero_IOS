//
//  ViewController.swift
//  Superhero_IOS
//
//  Created by Mañanas on 21/5/25.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var superheroList: [Superhero] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        
        searchSuperheroesByName(name: "a")
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        self.navigationItem.searchController = searchController
    }
    
    func searchSuperheroesByName (name: String) {
        Task {
            superheroList = await SuperheroProvider.findSuperheroByName(query: name)
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow!
        let superhero = superheroList[indexPath.row]
        detailVC.superhero = superhero
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchSuperheroesByName(name: searchBar.text  ?? "a")
    }
        
    /*func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        <#code#>
    }*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        superheroList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SuperheroViewCell", for: indexPath) as!
        SuperheroViewCell
        let superhero = superheroList[indexPath.row]
        cell.render(superhero: superhero)
        return cell
        }
    }




