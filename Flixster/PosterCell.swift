//
//  PosterCell.swift
//  Flixster
//
//  Created by Sahara Farah Abdi on 3/12/23.
//
import Nuke
import UIKit



class PosterCell: UICollectionViewCell {

    @IBOutlet weak var PosterImageView: UIImageView!
    func configure(with posters: Poster) {
        
//        Load image async via Nuke library image loading helper method
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + posters.poster_path.absoluteString)!, into: PosterImageView)
        
    }
}
