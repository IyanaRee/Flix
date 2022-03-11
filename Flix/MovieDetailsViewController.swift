//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Student on 3/1/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(movie["title"])
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w780"
        let posterpath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterpath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string:  "https://image.tmdb.org/t/p/w780" + backdropPath)

        backdropView.af_setImage(withURL: backdropUrl!)        // Do any additional setup after loading the view.
    }
}

