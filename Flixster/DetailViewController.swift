//
//  DetailViewController.swift
//  Flixster
//
//  Created by Sahara Farah Abdi on 3/5/23.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var MovieImageView: UIImageView!
    
    @IBOutlet weak var MovieVotes: UILabel!
    @IBOutlet weak var MoviePopularity: UILabel!
    @IBOutlet weak var MovieBlurb: UILabel!
    
    @IBOutlet weak var MovieAverageVote: UILabel!
    @IBOutlet weak var MovieTitle: UILabel!
    
    var movie: Movie!
    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: movie.poster, into: MovieImageView)
        MovieTitle.text = movie.title
        MovieBlurb.text = movie.description
        MovieAverageVote.text
        = String(movie.voteAverage)
        MovieVotes.text = String(movie.votecount)
        MoviePopularity.text = String(movie.popularity)
        
        
        
        

        // Do any additional setup after loading the view.
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
