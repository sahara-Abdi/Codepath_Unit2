//
//  Movie.swift
//  Flixster
//
//  Created by Sahara Farah Abdi on 3/5/23.
//
import Foundation
import UIKit

struct Movie{
    let title:String
    let description: String
    let poster: URL
    let votecount: Int
    let voteAverage:Double
    let popularity :Double
    
}
extension Movie{
    static var MyMovies: [Movie] = [
        Movie(title:"Knock at the Cabin",
              description: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              poster: URL(string:"https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!, votecount: 670, voteAverage:6.5, popularity:4112.616),
        Movie(title:"Black Panther: Wakanda Forever",
              description: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda",
              poster: URL(string:"https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!, votecount: 3708, voteAverage:7.4, popularity:2678.485),
        
        Movie(title:"Puss in Boots: The Last Wish",
              description: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives",
              poster: URL(string:"https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, votecount: 4159, voteAverage:8.4, popularity:2311.833),
        Movie(title:"Plane",
              description: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
              poster: URL(string:"https://image.tmdb.org/t/p/w500/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!, votecount: 717, voteAverage:6.9, popularity:2001.922),
        Movie(title:"Little Dixie",
              description: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
              poster: URL(string:"https://image.tmdb.org/t/p/w500/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!, votecount: 33, voteAverage:6.2, popularity:1538.518)
    ]
    
}
