//
//  TableController.swift
//  Lecteur Youtube
//
//  Created by Floderer Charlotte on 27/07/2018.
//  Copyright © 2018 Floderer Charlotte. All rights reserved.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    let idenfifiantCell = "ChansonCell"
     let indentifiantSegue = "VersVideo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        title = "Playlist"
       
    }

  // Méthodes obligey pour lancer tableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        // pour recuperer les chansons, remplire les cellules
        
        let chanson = chansons[indexPath.row]
       
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: idenfifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    // pour Aller sur le deuxieme ViewController
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chanson = chansons[indexPath.row]
        performSegue(withIdentifier: indentifiantSegue, sender: chanson)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == indentifiantSegue {
            if let nouveauController = segue.destination as? VideoController{
                   nouveauController.chanson = sender as? Chanson
            }
        }
    }
    
    //FIN de pour Aller sur le deuxieme ViewController
    
    
    func ajouterChanson () {
        chansons =  [Chanson]()
        
        //Ajouter 7 chansons
        
        let cool = Chanson(artiste: "Orelsan", titre: "Ils Sont Cool", code: "_DT-4-jJTZc")
        chansons.append(cool)
        
        let pluie = Chanson(artiste: "Orelsan", titre: "La pluie", code: "37StRy0LEbI")
        chansons.append(pluie)
        
        let fete = Chanson(artiste: "Orelsan", titre: "Défaite de Famille", code: "wRQEfN8PGYI")
        chansons.append(fete)
        
        let basique = Chanson(artiste: "Orelsan", titre: "Basique", code: "2bjk26RwjyU")
        chansons.append(basique)
        
        let social = Chanson(artiste: "Orelsan", titre: "Suicide Social", code: "B2kvtRprvkk")
        chansons.append(social)
        
        let sirenes = Chanson(artiste: "Orelsan", titre: "Le chant des Sirènes", code: "BrDzjrqO8-4")
        chansons.append(sirenes)
        
        let bien = Chanson(artiste: "Orelsan", titre: "Tout va bien", code: "dq6G2YWoRqA")
        chansons.append(bien)
        
        //ReloadData : recharger les données et mettre a jour TableView si besoin
        
        tableView.reloadData()
        
        
    }
    
}
