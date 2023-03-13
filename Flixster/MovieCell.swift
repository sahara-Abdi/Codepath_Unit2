//
//  MovieCell.swift
//  Flixster
//
//  Created by Sahara Farah Abdi on 3/5/23.
//
import Nuke
import UIKit

class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(with movies: Movie) {
        movieTitle.text = movies.original_title
        movieBlurb.text = movies.overview
//        Load image async via Nuke library image loading helper method
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movies.poster_path.absoluteString)!, into: movieImageView)
        
    }
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieBlurb: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
