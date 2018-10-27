//
//  ViewController.swift
//  MeusFilmes
//
//  Created by Hebert Falcão on 22/04/2018.
//  Copyright © 2018 hebertfalcao. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        var filme: Filme
        
        filme = Filme(titulo: "Filme 01", descricao: "Descricao 01", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 02", descricao: "Descricao 02", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 03", descricao: "Descricao 03", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 04", descricao: "Descricao 04", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 05", descricao: "Descricao 05", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 06", descricao: "Descricao 06", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 07", descricao: "Descricao 07", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 08", descricao: "Descricao 08", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 09", descricao: "Descricao 09", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 10", descricao: "Descricao 10", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControllerDestino =  segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

