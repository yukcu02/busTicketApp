//
//  SecondPageVC.swift
//  BiletYolcuOdev
//
//  Created by Furkan Yükcü on 8.04.2023.
//

import UIKit

class SecondPageVC: UIViewController {
    
    var ticketTable = [ticketModel]()

    @IBOutlet weak var SecondPageVC: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        SecondPageVC.register(UINib(nibName: "TicketCell", bundle: nil), forCellReuseIdentifier: "ticketCell")
        
    }
}

extension SecondPageVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ticketTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Tablo hücresini oluşturur ve sefer bilgisini hücreye yazar.
        let cell = tableView.dequeueReusableCell(withIdentifier: "ticketCell", for: indexPath) as! TicketCell
        cell.configure(model: ticketTable[indexPath.row])
        return cell
        
        
        
    }
}
