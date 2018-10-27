//
//  DetalhesFilmeViewController.swift
//  MeusFilmes
//
//  Created by Hebert Falcão on 28/04/2018.
//  Copyright © 2018 hebertfalcao. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var descricaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
    }
    
}
