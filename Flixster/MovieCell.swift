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
        movieTitle.text = movies.title
        movieBlurb.text = movies.description

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movies.poster, into: movieImageView)
        
    }
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieBlurb: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
