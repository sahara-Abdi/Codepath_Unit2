//
//  ViewController.swift
//  Flixster
//
//  Created by Sahara Farah Abdi on 3/5/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        // Get the track that corresponds to the table view row
        let movie = movies[indexPath.row]
        
        // Configure the cell with it's associated track
        cell.configure(with: movie)
        
        // return the cell for display in the table view
        return cell
        
    }
    
    var movies: [Movie] = []
    
    
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
       
        movies = Movie.MyMovies
        print(movies)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tableView: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {
            
            // Use the index path to get the associated track
            let movie = movies[indexPath.row]
            
            // Set the track on the detail view controller
            detailViewController.movie = movie
        }
        
       
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
      
    }
    
  
    
    }

    

